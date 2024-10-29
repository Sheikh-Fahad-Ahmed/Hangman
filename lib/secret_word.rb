secret_word = ''
File.open('dictionary.txt', 'r') do |file|
  word_array = file.readlines
  loop do
    random_word = word_array.sample
    secret_word = random_word[0..-2]
    break if secret_word.length >= 5 && secret_word.length <= 12
  end
  p secret_word
end
