# frozen_string_literal: true

module Display 
  def welcome_message
    puts 'Welcome to Hangman'
  end

  def choice_message
    puts 'guess a letter: '
  end

  def wrong_choice
    puts 'You can only enter 1 letter'
  end
end
