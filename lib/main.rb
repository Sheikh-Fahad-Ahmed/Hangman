# frozen_string_literal: true

require_relative 'game'

def play_game
  game = Game.new('fahad')
  game.game_start
  game.game_loop
end

play_game
