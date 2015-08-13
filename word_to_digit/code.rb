DICTIONARY = {
  zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9
}

File.open('input.txt').each_line do |line|
  strings = line.strip.split(';')

  def word_to_digit(words)
    words.map do |word|
      DICTIONARY[word.to_sym]
    end
  end
  
  puts(word_to_digit(strings).join(''))
end
