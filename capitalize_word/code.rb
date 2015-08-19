class Capitalizer < Struct.new(:words)
  def capitalize_words
    words.map { |word| word[0].capitalize << word[1..-1] }.join(' ')
  end
end

File.open('input.txt').each_line do |line|
  puts Capitalizer.new(line.split(' ')).capitalize_words
end
