#!/usr/bin/python3

import math

printHistory = False

#TODO stimuliList and feeling list might be filled dynamically too
stimuliList = ["Mouchoir", "Mouton", "Caresse", "Tape"]
feelingList = ["+", "-", "Nothing"]

defaultTau = 5
defaultAlpha = 0.5

stimuliValues = {}
for s in stimuliList:
    stimuliValues[s] = "Nothing"
stimuliValues["Caresse"] = "+"
stimuliValues["Tape"] = "-"

def surpriseThreshold():
    return 0.3 * 1.0 / len(stimuliList)

def fearThreshold():
    return 1.5 * 1.0 / len(feelingList)

def excitationThreshold():
    return 1.5 * 1.0 / len(feelingList)

def customScoreFormula(dt, tau, alpha):
    return math.e**(- (dt / tau)**alpha)

class Experience:

    # Initialize an experience with a stimuli perceived and an
    # associated feeling
    # perception must be a member of the stimuli list
    # feeling must be a member of the feelingList
    def __init__(self, perception, feeling, time):
        self.p = perception
        self.f = feeling
        self.t = time

    def score(self, t, tau, alpha):
        if t >= self.t:
            return customScoreFormula(t - self.t, tau, alpha)
        else:
            return 0


# This class can store various experiences concerning a stimuli.
# It is mainly a python dictionnary with convenient methods for probabilities
class StimuliExperiences:
    
    def __init__(self):
        self.experiences={}
        for f in feelingList:
            self.experiences[f] = []

    def scoreExperiences(self, time, tau, alpha):
        n = 0
        for key, val in self.experiences.items():
            n += sum([e.score(time, tau, alpha) for e in val])
        return n

    def scoreExperiencesWithFeeling(self, feeling, time, tau, alpha):
        return sum([e.score(time, tau, alpha) for e in self.experiences[feeling]])
 
    # experience must be a stimuli of the Experience class
    def addExperience(self, experience):
        feeling = experience.f
        self.experiences[feeling] += [experience]

    def smoothedProbability(self, feeling, k, time, tau, alpha):
        numerator = self.scoreExperiencesWithFeeling(feeling, time, tau, alpha) + k
        denominator = self.scoreExperiences(time, tau, alpha) + k * len(feelingList)
        return numerator / denominator

# Storing
class ExperienceDatabase:

    def __init__(self):
        self.experiences={}
        for s in stimuliList:
            self.experiences[s] = StimuliExperiences()

    def addExperience(self, experience):
        self.experiences[experience.p].addExperience(experience)

    def scoreExperiences(self, time, tau, alpha):
        n = 0
        for key, val in self.experiences.items():
            n += val.scoreExperiences(time, tau, alpha)
        return n

    def scoreExperiencesWithStimuli(self, s, time, tau, alpha):
        return self.experiences[s].scoreExperiences(time, tau, alpha)

    def smoothedStimuliProbability(self, s, k, time, tau, alpha):
        numerator = self.scoreExperiencesWithStimuli(s, time, tau, alpha) + k
        denominator = self.scoreExperiences(time, tau, alpha) + k * len(stimuliList)
        return numerator / denominator

    # return laplacian smoothed probability of P(f|o)
    # s : stimuli
    def smoothedFeelingProbability(self, s, feeling, k, time, tau, alpha):
        return self.experiences[s].smoothedProbability(feeling, k, time, tau, alpha)
        

class PredictiveModel:
    def __init__(self, k):
        self.experiences = ExperienceDatabase()
        self.lastStimuli = None
        self.stimuliTime = {}
        self.k = k

    def addStimuli(self, time, newStimuli):
        if (self.lastStimuli != None):
            e = Experience(self.lastStimuli, stimuliValues[newStimuli], time)
            self.experiences.addExperience(e)
        self.lastStimuli = newStimuli
        if not time in self.stimuliTime:
            self.stimuliTime[time] = []
        self.stimuliTime[time] += [newStimuli]

    def feelingProbability(self, feeling, time, tau, alpha):
        stimuliBeforeTime = [ s for t,s in self.stimuliTime.items() if t <= time]
        if not stimuliBeforeTime:
            return 0
        stimuliAtTime = stimuliBeforeTime[-1]
        lastStimuliAtTime = stimuliAtTime[-1]
        if printHistory:
            return self.experiences.smoothedFeelingProbability(lastStimuliAtTime, feeling, self.k, time, tau, alpha);
        else:
            return self.experiences.smoothedFeelingProbability(self.lastStimuli, feeling, self.k, time, tau, alpha);

    def reaction(self, time, tau, alpha):
        if self.lastStimuli == None:
            return "nothing"

        pLastStimuli = self.experiences.smoothedStimuliProbability(self.lastStimuli, self.k, time, tau, alpha)
        pSomethingBad = self.feelingProbability("-", time, tau, alpha)
        pSomethingGood = self.feelingProbability("+", time, tau, alpha)

        #print("Last Stimuli "+str(pLastStimuli))
        #print("Something Bad "+str(pSomethingBad))
        #print("Something good "+str(pSomethingGood))
        print(time, pSomethingBad, pSomethingGood, 1-pSomethingBad-pSomethingGood)

        if (pLastStimuli < surpriseThreshold()):
            return "surprise"

        if (pSomethingBad > fearThreshold()):
            return "fear"

        if (pSomethingGood > excitationThreshold()):
            return "excitation"

        return "nothing"


if __name__ == "__main__":
    c = 80
    k = math.e**(- (c / defaultTau)**defaultAlpha)
    model = PredictiveModel(k)
    model.addStimuli( 1, "Mouton")
    model.addStimuli( 2, "Caresse")
    model.addStimuli( 5, "Mouton")
    model.addStimuli( 6, "Caresse")
    model.addStimuli( 10, "Mouton")
    model.addStimuli( 11, "Tape")
    model.addStimuli( 15, "Mouton")
    timeToWatch = 100
    for dixT in range(0, 10 * timeToWatch, 1):
        t = dixT / 10
        model.reaction(t, defaultTau, defaultAlpha)


def test1():
    model = PredictiveModel(0.02)
    model.addStimuli( 0, "Mouton")
    model.addStimuli( 1, "Caresse")
    model.addStimuli( 2, "Mouton")
    model.addStimuli( 3, "Caresse")
    model.addStimuli( 4, "Mouton")
    model.addStimuli( 5, "Tape")
    model.addStimuli( 6, "Mouton")
    model.addStimuli( 7, "Caresse")
    model.addStimuli( 8, "Mouton")
    model.addStimuli( 9, "Caresse")
    model.addStimuli(10, "Mouton")
    model.addStimuli(11, "Tape")
    model.addStimuli(12, "Mouchoir")
    model.addStimuli(13, "Tape")
    model.addStimuli(14, "Mouchoir")
    model.addStimuli(15, "Tape")
    model.addStimuli(16, "Mouchoir")
    print(model.reaction(17, defaultTau, defaultAlpha))
    print(model.reaction(20, defaultTau, defaultAlpha))
