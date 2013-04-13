{BowlingGame} = require('../BowlingGame')
{_}           = require('underscore')

describe 'A Bowling Game', ->
    it 'that is a gutter game scores zero.', ->
        game = new BowlingGame()
        expect(game.score()).toEqual 0
    
    it 'that is all ones scores 20.', ->
        game = new BowlingGame();
        _(20).times -> game.roll 1
        expect(game.score()).toEqual 20
