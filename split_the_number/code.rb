class Computation < Struct.new(:numbers, :characters)

  def to_s
    result.to_s
  end

  def result
    first_number.send(math_operator, second_number)
  end

  private

  def math_operator
    characters[character_operator_index]
  end

  def character_operator_index
    characters.index { |character| character.match(/\W/) }
  end

  def first_number
    number(first_number_range)
  end

  def first_number_range
    0..character_operator_index
  end

  def second_number
    number(second_number_range)
  end

  def number(range)
    numbers.slice(range).join.to_i
  end

  def second_number_range
    character_operator_index..numbers.length
  end
end

File.open('input.txt').each_line do |line|
  numbers, characters = *line.split(' ').map { |element| element.split('') }
  puts Computation.new(numbers, characters)
end
