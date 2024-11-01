# Hangman

Welcome to Hangman, a simple word-guessing game built using Ruby for the command line. The goal is to guess the hidden word one letter at a time before running out of chances!

## Features

- Command-line interface
- Random word selection from a predefined list
- Displays correct guesses and blanks for missing letters
- Tracks wrong guesses and remaining attempts
- Allows the user to guess one letter per turn
- Provides feedback on win/loss status at the end of the game
- Option to save and load game progress

## How to Play

1. Clone this repository to your local machine.
2. Ensure Ruby is installed on your system. If not, download and install it from here.
3. Navigate to the project directory in your terminal.
4. Run the game by typing:
```

ruby lib/main.rb

```
5. You will be presented with a series of underscores representing the hidden word.
6. Guess one letter at a time by typing it and pressing Enter.
7. Each correct guess will fill in the blanks with the guessed letter.
8. Incorrect guesses will be counted, and you have a limited number of attempts before you lose the game.
9. If you guess all the letters correctly before running out of attempts, you win!
10. You can save your progress at any time by pressing **1** and load it later to continue where you left off by pressing **2**.