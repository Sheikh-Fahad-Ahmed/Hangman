# frozen_string_literal: true

module Display 
  def welcome_message
    puts 'Welcome to Hangman'
  end

  def choice_message
    puts 'guess a letter: '
  end

  def list_of_guesses
    puts "\nGuessed letters: "
  end

  def incorrect_guess
    puts 'Your guess is incorrect'
  end

  def letter_guessed
    puts 'You have already guessed this letter'
  end

  def wrong_choice
    puts 'You can only enter 1 letter'
  end
end
