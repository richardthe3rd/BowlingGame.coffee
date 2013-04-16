{BowlingGame} = require('../BowlingGame')
{_}           = require('underscore')

describe 'A Bowling Game', ->
    it 'that is a gutter game scores 0.', ->
        game = new BowlingGame()
        _(20).times -> game.roll 0
        expect(game.score()).toEqual 0
    
    it 'that is all ones scores 20.', ->
        game = new BowlingGame()
        _(20).times -> game.roll 1
        expect(game.score()).toEqual 20
        
    it 'that has one spare scores 16.', ->
        game = new BowlingGame()
        game.roll 5
        game.roll 5
        game.roll 3
        _(17).times -> game.roll 0
        expect(game.score()).toEqual 16

    it 'that has one strike scores 24.', ->
        game = new BowlingGame()
        game.roll 10
        game.roll 3
        game.roll 4
        _(17).times -> game.roll 0
        expect(game.score()).toEqual 24
        
    it 'that is perfect scores 300.', ->
        game = new BowlingGame()
        _(12).times -> game.roll 10
        expect(game.score()).toEqual 300
        