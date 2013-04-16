exports.BowlingGame =
class BowlingGame
    
    constructor: ->
        @rolls = []
        
    score: ->        
        frameIndex = 0
        theScore = 0
        while frameIndex < 20
            if @rolls[frameIndex] + @rolls[frameIndex+1] == 10
                theScore += 10 + @rolls[frameIndex+2]
                frameIndex+=2
            else
                theScore += @rolls[frameIndex]
                frameIndex+=1
        theScore
        
    roll: (n) ->
        @rolls.push n