# frozen_string_literal: true

module Display 
  def welcome_message
    puts 'Welcome to Hangman'
  end

  def choice_message
    'Guess a letter: '
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

  def lost
    puts "\n\tYou ran out of guesses..\n\tYou have lost..\n\tThank you for playing!"
  end

  def won
    puts "\n\tCongradualtions!!\n\tYou have guessed the secret word\n\tYou win!!\n\tThank you for playing!"
    exit(0)
  end
end
