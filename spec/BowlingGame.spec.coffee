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
        
    it 'that has one spare scores 29.', ->
        game = new BowlingGame()
        game.roll 5
        game.roll 5
        _(18).times -> game.roll 1
        expect(game.score()).toEqual 29

    it 'that has one strike scores 30.', ->
        game = new BowlingGame()
        game.roll 10
        _(18).times -> game.roll 1
        expect(game.score()).toEqual 30
        