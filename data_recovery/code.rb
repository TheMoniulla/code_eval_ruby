File.open('input.txt').each_line do |line|
  array = line.split(';')

  def words(array)
    array[0].split(' ')
  end

  def parsed_numbers(array)
    array[1].split(' ').map(&:to_i)
  end

  def words_in_correct_order(array)
    numbers = parsed_numbers(array)
    result = []
    for i in 1..words(array).length
      numbers.push(i) if numbers.index(i) == nil
      result.push(words(array)[numbers.index(i)])
    end
    result.join(' ')
  end
  
  puts(words_in_correct_order(array))
end
