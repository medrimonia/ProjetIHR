#!/usr/bin/python3

#TODO objectList and feeling list might be filled dynamically too
objectList = ["A", "B", "C"]
feelingList = ["+", "-", "Nothing"]

class Experience:

    # Initialize an experience with an object perceived and an
    # associated feeling
    # perception must be a member of the object list
    # feeling must be a member of the feelingList
    def __init__(self, perception, feeling):
        self.p = perception
        self.f = feeling


# This class can store various experiences concerning an object.
# It is mainly a python dictionnary with convenient methods for probabilities
class ObjectExperiences:
    
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
 
    # experience must be an object of the Experience class
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
        for o in objectList:
            self.experiences[o] = ObjectExperiences()

    def addExperience(self, experience):
        self.experiences[experience.p].addExperience(experience)

    def nbExperiences(self):
        n = 0
        for key, val in self.experiences.items():
            n += val.nbExperiences()
        return n

    def nbExperiencesWithObject(self, o):
        return self.experiences[o].nbExperiences()

    def smoothedObjectProbability(self, o, k):
        numerator = self.nbExperiencesWithObject(o) + k
        denominator = self.nbExperiences() + k * len(objectList)
        return numerator / denominator

    # return laplacian smoothed probability of P(f|o)
    # o : object
    def smoothedFeelingProbability(self, o, feeling, k):
        return self.experiences[o].smoothedProbability(feeling, k)
        

if __name__ == "__main__":
    db = ExperienceDatabase()
    print("Number of experiences : ", db.nbExperiences())
    print("P(A) = ", db.smoothedObjectProbability("A",1))
    print("P(+|A) = ", db.smoothedFeelingProbability("A","+",1))
    print("P(-|A) = ", db.smoothedFeelingProbability("A","-",1))
    print("P(+|B) = ", db.smoothedFeelingProbability("B","+",1))
    print("-----------------------------")
    e1 = Experience("A","+")
    db.addExperience(e1)
    print("Number of experiences : ", db.nbExperiences())
    print("P(A) = ", db.smoothedObjectProbability("A",1))
    print("P(+|A) = ", db.smoothedFeelingProbability("A","+",1))
    print("P(-|A) = ", db.smoothedFeelingProbability("A","-",1))
    print("P(+|B) = ", db.smoothedFeelingProbability("B","+",1))
    
