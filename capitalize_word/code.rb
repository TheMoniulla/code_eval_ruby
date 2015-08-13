File.open('input.txt').each_line do |line|
  def capitalize_word(array)
    array.map do |word|
      word[0] = word[0].capitalize
      word
    end.join(' ')
  end

  words = line.split(' ')
  puts(capitalize_word(words))
end
