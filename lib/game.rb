# frozen_string_literal: true

require_relative 'secret_word'
require_relative 'display'

class Game
  attr_reader :secret_word, :player, :board

  include SecretWord
  include Display
  def initialize(player)
    @secret_word = extract_word
    @player = player
    @board = Array.new(secret_word.length) { '_' }
  end

  def display
    p secret_word
    p player
    p board
  end

  def game_start
    welcome_message
    puts 'Secret word has been generated...'
    puts 'You get 11 tries'
  end


end
