{BowlingGame} = require('../BowlingGame')
{_}           = require('underscore')

describe 'A Bowling Game', ->
            
    game = null
            
    rollASpare = ->        
        game.roll 5
        game.roll 5

    rollAStrike = ->        
        game.roll 10
        
    rollAGutterBall = ->
        game.roll 0

    rollASingle = ->
        game.roll 1

    beforeEach ->
        game = new BowlingGame()

    it 'that is a gutter game scores 0.', ->
        _(20).times rollAGutterBall
        expect(game.score()).toEqual 0
    
    it 'that is all ones scores 20.', ->
        _(20).times rollASingle
        expect(game.score()).toEqual 20
        
    it 'that has one spare scores 16.', ->
        rollASpare()
        game.roll 3
        _(17).times rollAGutterBall
        expect(game.score()).toEqual 16

    it 'that has one strike scores 24.', ->
        rollAStrike()
        game.roll 3
        game.roll 4
        _(17).times rollAGutterBall
        expect(game.score()).toEqual 24
        
    it 'that is perfect scores 300.', ->
        _(12).times rollAStrike
        expect(game.score()).toEqual 300
