#!/usr/bin/python3

#TODO stimuliList and feeling list might be filled dynamically too
stimuliList = ["Mouchoir", "Mouton", "Caresse", "Tape"]
feelingList = ["+", "-", "Nothing"]

stimuliValues = {}
for s in stimuliList:
    stimuliValues[s] = "Nothing"
stimuliValues["Caresse"] = "+"
stimuliValues["Tape"] = "-"

def surpriseThreshold():
    return 0.5 * 1.0 / len(stimuliList)

def fearThreshold():
    return 1.5 * 1.0 / len(feelingList)

def excitationThreshold():
    return 1.5 * 1.0 / len(feelingList)

class Experience:

    # Initialize an experience with a stimuli perceived and an
    # associated feeling
    # perception must be a member of the stimuli list
    # feeling must be a member of the feelingList
    def __init__(self, perception, feeling):
        self.p = perception
        self.f = feeling


# This class can store various experiences concerning a stimuli.
# It is mainly a python dictionnary with convenient methods for probabilities
class StimuliExperiences:
    
    def __init__(self):
        self.experiences={}
        for f in feelingList:
            self.experiences[f] = []

    def nbExperiences(self):
        n = 0
        for key, val in self.experiences.items():
            n += len(val)
        return n

    def nbExperiencesWithFeeling(self, feeling):
        return len(self.experiences[feeling])
 
    # experience must be a stimuli of the Experience class
    def addExperience(self, experience):
        feeling = experience.f
        self.experiences[feeling] += [experience]

    def smoothedProbability(self, feeling, k):
        numerator = self.nbExperiencesWithFeeling(feeling) + k
        denominator = self.nbExperiences() + k * len(feelingList)
        return numerator / denominator

# Storing
class ExperienceDatabase:

    def __init__(self):
        self.experiences={}
        for s in stimuliList:
            self.experiences[s] = StimuliExperiences()

    def addExperience(self, experience):
        self.experiences[experience.p].addExperience(experience)

    def nbExperiences(self):
        n = 0
        for key, val in self.experiences.items():
            n += val.nbExperiences()
        return n

    def nbExperiencesWithStimuli(self, s):
        return self.experiences[s].nbExperiences()

    def smoothedStimuliProbability(self, s, k):
        numerator = self.nbExperiencesWithStimuli(s) + k
        denominator = self.nbExperiences() + k * len(stimuliList)
        return numerator / denominator

    # return laplacian smoothed probability of P(f|o)
    # s : stimuli
    def smoothedFeelingProbability(self, s, feeling, k):
        return self.experiences[s].smoothedProbability(feeling, k)
        

class PredictiveModel:
    def __init__(self, k):
        self.experiences = ExperienceDatabase()
        self.lastStimuli = None
        self.k = k

    def addStimuli(self, newStimuli):
        if (self.lastStimuli != None):
            e = Experience(self.lastStimuli, stimuliValues[newStimuli])
            self.experiences.addExperience(e)
        self.lastStimuli = newStimuli

    def feelingProbability(self, feeling):
        return self.experiences.smoothedFeelingProbability(self.lastStimuli, feeling, self.k);

    def reaction(self):
        if self.lastStimuli == None:
            return "nothing"
        pLastStimuli = self.experiences.smoothedStimuliProbability(self.lastStimuli, self.k)
        if (pLastStimuli < surpriseThreshold()):
            return "surprise"
        pSomethingBad = self.feelingProbability("-")
        if (pSomethingBad > fearThreshold()):
            return "fear"
        pSomethingGood = self.feelingProbability("+")
        if (pSomethingGood > excitationThreshold()):
            return "excitation"
        return "nothing"


if __name__ == "__main__":
    model = PredictiveModel(1)
    model.addStimuli("Mouton")
    model.addStimuli("Caresse")
    model.addStimuli("Mouton")
    print(model.reaction())
    
