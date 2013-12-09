!<arch>
debian-binary/  0           0     0     100644  4         `
2.0
control.tar.gz/ 0           0     0     100644  10240     `
control                                                                                             000644  000000  000000  00000000076 00000000000 010573  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         Type: ChoregrapheBoxLibrary
Version: 3.0
title: ReactionModel
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  data.tar.gz/    0           0     0     100644  20480     `
ReactionModel/box.xar                                                                               000644  000000  000000  00000031604 00000000000 013222  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="2" tooltip="Enter tooltip here" x="113" y="38">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Input name="stimulus" type="3" type_size="1" nature="1" inner="0" tooltip="" id="4" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="5" />
        <Output name="reaction" type="3" type_size="1" nature="2" inner="0" tooltip="" id="6" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram>
                        <Box name="PredictiveModel" id="1" tooltip="Enter tooltip here" x="329" y="131">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[import math

#TODO stimuliList and feeling list might be filled dynamically too
stimuliList = ["Stroke", "Tap"]
feelingList = ["+", "-", "Nothing"]

stimuliValues = {}
for s in stimuliList:
    stimuliValues[s] = "Nothing"
stimuliValues["Stroke"] = "+"
stimuliValues["Tap"] = "-"

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

    def newExperience(self, newStimulus):
        self.experiences[newStimulus] = StimuliExperiences()

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
        global stimuliList
        if not newStimuli in stimuliList:
            stimuliList += [newStimuli]
            stimuliValues[newStimuli] = "Nothing"
            self.experiences.newExperience(newStimuli)

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
alpha = 0.5]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="2" />
                            <Input name="stimuli" type="3" type_size="1" nature="1" inner="0" tooltip="" id="3" />
                            <Input name="timeTick" type="1" type_size="1" nature="1" inner="0" tooltip="" id="4" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="5" />
                            <Output name="reaction" type="3" type_size="1" nature="2" inner="0" tooltip="" id="6" />
                        </Box>
                        <Box name="Timer" id="2" tooltip="Send a signal with a predefined period." x="173" y="18">
                            <bitmap>media/images/box/wait.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[import threading

class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.tb = False

    def onUnload(self):
        if( self.tb ):
            self.tb.cancel()
            self.tb = False

    def startTimer(self, period = 1):
        if( self.tb ):
            self.tb.cancel()
        self.tb = threading.Timer(period, self.startTimer, [period])
        self.tb.start()
        self.timerOutput()

    def onInput_onStart(self):
        self.startTimer( self.getParameter("Period (s)") )

    def onInput_onStop(self):
        bRunning = self.tb
        self.onUnload()
        if( bRunning ):
            self.onStopped()]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Start the timer using the configured period value." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Stop the timer." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is stopped." id="4" />
                            <Output name="timerOutput" type="1" type_size="1" nature="2" inner="0" tooltip="Send a bang periodically." id="5" />
                            <Parameter name="Period (s)" inherits_from_parent="0" content_type="2" value="1" default_value="1" min="0" max="5000" tooltip="Defines the period of the timer box (in seconds).&#x0A;&#x0A;For example, if this parameter is equal to 1s, the timerOutput will be stimulated&#x0A;every second until the onStop input is stimulated." id="6" />
                        </Box>
                        <Link inputowner="1" indexofinput="4" outputowner="2" indexofoutput="5" />
                        <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="2" />
                        <Link inputowner="1" indexofinput="3" outputowner="0" indexofoutput="4" />
                        <Link inputowner="0" indexofinput="6" outputowner="1" indexofoutput="6" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
                                                                                                                            xalinfo                                                                                             000644  000000  000000  00000000153 00000000000 010547  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<Folder expanded="no">
    <Node name="ReactionModel" />
</Folder>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     