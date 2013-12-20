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

    parser.add_argument('--show-prediction-graph',                 \
            dest='show',                                         \
            action='store_true',                                 \
            help='When this option is given, prediction probability\
            over time is printed instead of resulting feeling')

    parser.add_argument('--smart-history',                       \
            dest='history',                                      \
            action='store_true',                                 \
            help='This options changes the stimuli choice for    \
            feeling probability computation')

    args = parser.parse_args()

    return args

def printReactionGraph(model, timeToWatch, tau, alpha):
    nbDataBySecond = 20
    for dixT in range(0, nbDataBySecond * timeToWatch, 1):
        t = dixT / nbDataBySecond
        pSurprise, pBad, pGood = model.predictionProbaRepartition(t, tau, alpha)
        print(t, pBad, pGood, 1-pBad-pGood, pSurprise)

if __name__ == "__main__":
    args = parseArguments()
    k = customScoreFormula(args.c, args.tau, args.alpha)
    model = PredictiveModel(k, args.history)
    model.addStimuli( 1, "Sheep")
    model.addStimuli( 2, "Stroke")
    model.addStimuli( 5, "Sheep")
    model.addStimuli( 6, "Stroke")
    model.addStimuli( 10, "Sheep")
    model.addStimuli( 11, "Tap")
    model.addStimuli( 15, "Sheep")
    if args.show:
        printReactionGraph(model, 100, args.tau, args.alpha)
    else:
        print(model.prediction(15, args.tau, args.alpha))

def test1():
    model = PredictiveModel(k)
    model.addStimuli( 0, "Sheep")
    model.addStimuli( 1, "Stroke")
    model.addStimuli( 2, "Sheep")
    model.addStimuli( 3, "Stroke")
    model.addStimuli( 4, "Sheep")
    model.addStimuli( 5, "Tap")
    model.addStimuli( 6, "Sheep")
    model.addStimuli( 7, "Stroke")
    model.addStimuli( 8, "Sheep")
    model.addStimuli( 9, "Stroke")
    model.addStimuli(10, "Sheep")
    model.addStimuli(11, "Tap")
    model.addStimuli(12, "Tissue")
    model.addStimuli(13, "Tap")
    model.addStimuli(14, "Tissue")
    model.addStimuli(15, "Tap")
    model.addStimuli(16, "Tissue")
    print(model.prediction(17, args.tau, args.alpha))
    print(model.prediction(20, args.tau, args.alpha))
