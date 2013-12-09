import math

#TODO stimuliList and feeling list might be filled dynamically too
stimuliList = ["Mouchoir", "Mouton", "Caresse", "Tape"]
feelingList = ["+", "-", "Nothing"]

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
    def __init__(self, k, smartHistory = False):
        ''' If smartHistory is set to True, feelingProbability will be
        computed for the stimuli that occured just before the given time.
        Otherwise feelingProbability is computed for the last stimuli added.'''
        self.experiences = ExperienceDatabase()
        self.lastStimuli = None
        self.stimuliTime = {}
        self.k = k
        self.smartHistory = smartHistory

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
        if self.smartHistory:
            return self.experiences.smoothedFeelingProbability(lastStimuliAtTime, feeling, self.k, time, tau, alpha);
        else:
            return self.experiences.smoothedFeelingProbability(self.lastStimuli, feeling, self.k, time, tau, alpha);

    def predictionProbaRepartition(self, time, tau, alpha):
        pLastStimuli = self.experiences.smoothedStimuliProbability(self.lastStimuli, self.k, time, tau, alpha)
        pSomethingBad = self.feelingProbability("-", time, tau, alpha)
        pSomethingGood = self.feelingProbability("+", time, tau, alpha)
        return pLastStimuli, pSomethingBad, pSomethingGood

    def prediction(self, time, tau, alpha):
        if self.lastStimuli == None:
            return "Nothing"

        pLastStimuli, pSomethingBad, pSomethingGood = self.predictionProbaRepartition(time, tau, alpha)

        if (pLastStimuli < surpriseThreshold()):
            return "Surprise"

        if (pSomethingBad > fearThreshold()):
            return "Fear"

        if (pSomethingGood > excitationThreshold()):
            return "Excitation"

        return "Nothing"
        
class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        k = customScoreFormula(c, tau, alpha)
        self.predictiveModel = PredictiveModel(k, False)
        self.actualTime = 0.0
        self.lastStimuliTime = 0
        self.isAfraid = False
        self.isExcited = False
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass
        
    def treatNoPrediction(self):
        if (self.isAfraid):
            self.isAfraid = False
            self.reaction("Relief")
        if (self.isExcited):
            self.isExcited = False
            self.reaction("Sadness")
    
        
    def onInput_timeTick(self):
        self.actualTime += 1
        dt = self.actualTime - self.lastStimuliTime
        if (dt >= 5):
            self.treatNoPrediction()
        # TODO if time since last exp = 5 test for stimuli
        pass
        
    def onInput_stimuli(self, stimulusName):
        self.predictiveModel.addStimuli(self.actualTime, stimulusName)
        if stimuliValues[stimulusName] == '+':
            self.reaction("Excitation")
        elif stimuliValues[stimulusName] == '-':
            self.reaction("Fear");
        else:
            r = self.predictiveModel.prediction(self.actualTime, tau, alpha)
            self.reaction(r)
            if r == "Excitation":
                self.isAfraid = False
                self.isExcited = True
            elif r == "Fear":
                self.isExcited = False
                self.isAfraid = True
            elif r == "Nothing":
                self.treatNoPrediction()
        self.lastStimuliTime = self.actualTime
        pass    

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass
        
c = 80
tau = 5
alpha = 0.5
