File.open('input.txt').each_line do |line|
  strings = line.split('| ')
  numbers = strings[1].split(' ').map(&:to_i)

  def find_a_writer(numbers, strings)
    numbers.map do |number|
      strings[0][number - 1]
    end.join('')
  end

  puts(find_a_writer(numbers, strings))
end
