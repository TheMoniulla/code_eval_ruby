File.open('input.txt').each_line do |line|
  def swap(word)
    array = word.split('')
    firstdigit = array[0]
    array[0] = array[array.length - 1]
    array[array.length - 1] = firstdigit
    array.join('')
  end

  string = line.split(' ')
  puts string.map { |word| swap(word)}.join(' ')
end
