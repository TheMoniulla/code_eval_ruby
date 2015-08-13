File.open('input.txt').each_line do |line|
  words = line.strip.split(' ')

  def longest_word(words)
    longestword = ''
    words.each do |word|
      longestword = word if word.length > longestword.length
    end
    longestword
  end

  puts(longest_word(words))
end
