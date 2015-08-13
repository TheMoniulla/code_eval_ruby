File.open('input.txt').each_line do |line|
  line = line.split(' ')
  numbers = line[0]
  characters = line[1].split('')

  def non_word_characters(array)
    array.map do |chars|
      chars.match(/\W/)
    end.join('')
  end

  def index_of_characters(characters)
    characters.index(non_word_characters(characters))
  end

  def split_the_numbers(characters, numbers)
    z = index_of_characters(characters)
    a = (numbers.slice(0, z)).to_i
    b = (numbers.slice(z, numbers.length)).to_i
    if non_word_characters(characters) == '-'
      a - b
    elsif non_word_characters(characters) == '+'
      a + b
    end
  end

  puts split_the_numbers(characters, numbers)
end
