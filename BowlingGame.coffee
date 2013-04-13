exports.BowlingGame =
class BowlingGame
    constructor: ->
        @theScore = 0
        
    score: ->
        @theScore
        
    roll: (n) ->
        @theScore += n