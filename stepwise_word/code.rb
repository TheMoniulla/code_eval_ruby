File.open('input.txt').each_line do |line|
  def longest_word(words)
    word = ''
    words.split(' ').each do |string|
      word = string if word.length < string.length
    end
    word
  end

  def stepwise_word(array)
    word = longest_word(array)
    letters = word.split('')
    letters.each_with_index.map do |letter, index|
      letter + '*' * index
    end.join(' ')
  end

  puts(stepwise_word(line.strip))
end
