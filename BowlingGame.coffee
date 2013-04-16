{_} = require('underscore')

exports.BowlingGame =
class BowlingGame
    
    constructor: ->
        @currentRoll = 0

        @rolls = []
        _(20).times => @rolls.push 0
        
        @isSpare = (frameIndex) ->
            @rolls[frameIndex] + @rolls[frameIndex+1] == 10

        @spareBonus = (frameIndex) ->
            @rolls[frameIndex+2]
            
        @isStrike = (frameIndex) ->
            @rolls[frameIndex] == 10 
            
        @strikeBonus = (frameIndex) ->
            @rolls[frameIndex+1] + @rolls[frameIndex+2]
            
        @sumOfBallsInFrame = (frameIndex) ->
            @rolls[frameIndex] + @rolls[frameIndex+1]
            
            
    score: ->            
        frameIndex = 0
        theScore = 0
        _(10).times =>
            if @isStrike frameIndex
                theScore += 10 + @strikeBonus frameIndex
                frameIndex += 1
            else if @isSpare frameIndex
                theScore += 10 + @spareBonus frameIndex
                frameIndex += 2
            else
                theScore += @sumOfBallsInFrame frameIndex
                frameIndex += 2
        theScore
    
    roll: (n) ->
        @rolls[@currentRoll++] = n
