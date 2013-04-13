exports.BowlingGame =
class BowlingGame
    
    constructor: ->
        @rolls = []
        
    score: ->        
        frameIndex = 0
        theScore = 0
        while frameIndex < 20
            theScore = theScore + @rolls[frameIndex] + @rolls[frameIndex+1]
            frameIndex+=2
        theScore
        
    roll: (n) ->
        @rolls.push n