#!/usr/bin/python3

import argparse
from ExperienceDatabase import *

defaultTau = 5
defaultAlpha = 0.5
defaultC = 80

def parseArguments():
    parser = argparse.ArgumentParser()

    parser.add_argument('--tau',                                 \
            type=float,                                          \
            default=defaultTau,                                  \
            help='Tau parameter in score formula                 \
            (should be between 1 and 10)',                       \
            required=False)

    parser.add_argument('--alpha',                               \
            type=float,                                          \
            default=defaultAlpha,                                \
            help='Alpha parameter in score formula               \
            (should be between 0 and 1)',                        \
           required=False)

    parser.add_argument('--c',                                   \
            type=float,                                          \
            default=defaultC,                                    \
            help='C parameter used to compute k smoothing factor \
            (should be between 1 and 100)',                      \
            required=False)

    parser.add_argument('--show-reaction-graph',                 \
            dest='show',                                         \
            action='store_true',                                 \
            help='When this option is given, reaction probability\
            over time is printed instead of resulting feeling')

    parser.add_argument('--smart-history',                       \
            dest='history',                                      \
            action='store_true',                                 \
            help='This options changes the stimuli choice for    \
            feeling probability computation')

    args = parser.parse_args()

    return args

def printReactionGraph(model, timeToWatch, tau, alpha):
    for dixT in range(0, 10 * timeToWatch, 1):
        t = dixT / 10
        pSurprise, pBad, pGood = model.reactionProbaRepartition(t, tau, alpha)
        print(t, pBad, pGood, 1-pBad-pGood, pSurprise)

if __name__ == "__main__":
    args = parseArguments()
    k = customScoreFormula(args.c, args.tau, args.alpha)
    model = PredictiveModel(k, args.history)
    model.addStimuli( 1, "Mouton")
    model.addStimuli( 2, "Caresse")
    model.addStimuli( 5, "Mouton")
    model.addStimuli( 6, "Caresse")
    model.addStimuli( 10, "Mouton")
    model.addStimuli( 11, "Tape")
    model.addStimuli( 15, "Mouton")
    if args.show:
        printReactionGraph(model, 100, args.tau, args.alpha)
    else:
        print(model.reaction(15, args.tau, args.alpha))

def test1():
    model = PredictiveModel(k)
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
    print(model.reaction(17, args.tau, args.alpha))
    print(model.reaction(20, args.tau, args.alpha))
