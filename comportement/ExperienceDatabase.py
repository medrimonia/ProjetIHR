#!/usr/bin/python3

import math

#TODO stimuliList and feeling list might be filled dynamically too
stimuliList = ["Mouchoir", "Mouton", "Caresse", "Tape"]
feelingList = ["+", "-", "Nothing"]

default_tau = 5
default_alpha = 0.5

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

class Experience:

    # Initialize an experience with a stimuli perceived and an
    # associated feeling
    # perception must be a member of the stimuli list
    # feeling must be a member of the feelingList
    def __init__(self, perception, feeling, time_s):
        self.p = perception
        self.f = feeling
        self.t = time_s

    def score(self, t, tau, alpha):
        return math.e**(- ((t - self.t) / tau)**alpha)


# This class can store various experiences concerning a stimuli.
# It is mainly a python dictionnary with convenient methods for probabilities
class StimuliExperiences:
    
    def __init__(self):
        self.experiences={}
        for f in feelingList:
            self.experiences[f] = []

    def scoreExperiences(self, time_s, tau, alpha):
        n = 0
        for key, val in self.experiences.items():
            n += sum([e.score(time_s, tau, alpha) for e in val])
        return n

    def scoreExperiencesWithFeeling(self, feeling, time_s, tau, alpha):
        return sum([e.score(time_s, tau, alpha) for e in self.experiences[feeling]])
 
    # experience must be a stimuli of the Experience class
    def addExperience(self, experience):
        feeling = experience.f
        self.experiences[feeling] += [experience]

    def smoothedProbability(self, feeling, k, time_s, tau, alpha):
        numerator = self.scoreExperiencesWithFeeling(feeling, time_s, tau, alpha) + k
        denominator = self.scoreExperiences(time_s, tau, alpha) + k * len(feelingList)
        return numerator / denominator

# Storing
class ExperienceDatabase:

    def __init__(self):
        self.experiences={}
        for s in stimuliList:
            self.experiences[s] = StimuliExperiences()

    def addExperience(self, experience):
        self.experiences[experience.p].addExperience(experience)

    def scoreExperiences(self, time_s, tau, alpha):
        n = 0
        for key, val in self.experiences.items():
            n += val.scoreExperiences(time_s, tau, alpha)
        return n

    def scoreExperiencesWithStimuli(self, s, time_s, tau, alpha):
        return self.experiences[s].scoreExperiences(time_s, tau, alpha)

    def smoothedStimuliProbability(self, s, k, time_s, tau, alpha):
        numerator = self.scoreExperiencesWithStimuli(s, time_s, tau, alpha) + k
        denominator = self.scoreExperiences(time_s, tau, alpha) + k * len(stimuliList)
        return numerator / denominator

    # return laplacian smoothed probability of P(f|o)
    # s : stimuli
    def smoothedFeelingProbability(self, s, feeling, k, time_s, tau, alpha):
        return self.experiences[s].smoothedProbability(feeling, k, time_s, tau, alpha)
        

class PredictiveModel:
    def __init__(self, k):
        self.experiences = ExperienceDatabase()
        self.lastStimuli = None
        self.k = k

    def addStimuli(self, time_s, newStimuli):
        if (self.lastStimuli != None):
            e = Experience(self.lastStimuli, stimuliValues[newStimuli], time_s)
            self.experiences.addExperience(e)
        self.lastStimuli = newStimuli

    def feelingProbability(self, feeling, time_s, tau, alpha):
        return self.experiences.smoothedFeelingProbability(self.lastStimuli, feeling, self.k, time_s, tau, alpha);

    def reaction(self, time_s, tau, alpha):
        if self.lastStimuli == None:
            return "nothing"

        pLastStimuli = self.experiences.smoothedStimuliProbability(self.lastStimuli, self.k, time_s, tau, alpha)
        print("Last Stimuli "+str(pLastStimuli))
        if (pLastStimuli < surpriseThreshold()):
            return "surprise"

        pSomethingBad = self.feelingProbability("-", time_s, tau, alpha)
        print("Something Bad "+str(pSomethingBad))
        if (pSomethingBad > fearThreshold()):
            return "fear"

        pSomethingGood = self.feelingProbability("+", time_s, tau, alpha)
        print("Something good "+str(pSomethingGood))
        if (pSomethingGood > excitationThreshold()):
            return "excitation"

        return "nothing"


if __name__ == "__main__":
    model = PredictiveModel(1)
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
    print(model.reaction(17, default_tau, default_alpha))
    print(model.reaction(20, default_tau, default_alpha))
    
