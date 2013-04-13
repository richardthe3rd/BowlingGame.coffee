{BowlingGame} = require('../BowlingGame')

describe 'A Bowling Game', ->
    it 'that is a gutter game scores zero.', ->
        game = new BowlingGame()
        expect(game.score()).toEqual 0
