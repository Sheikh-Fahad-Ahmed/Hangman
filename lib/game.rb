# frozen_string_literal: true

require_relative 'secret_word'
require_relative 'display'

class Game
  attr_accessor :board, :guessed_letters, :guesses
  attr_reader :secret_word, :player

  include SecretWord
  include Display
  def initialize(player)
    @secret_word = extract_word
    @player = player
    @guesses = 11
    @guessed_letters = []
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

  def check_choice(choice)
    if guessed_letters.include?(choice)
      letter_guessed
    else
      guessed_letters.push(choice)
      if secret_word.include?(choice)
        secret_word.split('').each_with_index do |item, index|
          board[index] = choice if item == choice
        end
      else
        incorrect_guess
        @guesses -= 1
      end
    end
  end

  def game_loop
    until guesses.zero?
      choice_message
      puts board.join(' ')
      puts guessed_letters.join(' ')
      choice = gets.chomp.downcase
      until choice.match(/^[a-z]$/)
        wrong_choice
        choice_message
        choice = gets.chomp.downcase
      end
      check_choice(choice)
    end
  end
end
