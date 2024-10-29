# frozen_string_literal: true

require_relative 'game'

def play_game
  game = Game.new('fahad')
  game.game_start
end

play_game
