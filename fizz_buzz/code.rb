File.open('input.txt').each_line do |line|
  numbers = line.split(' ').map(&:to_i)

  result = (1..numbers[2]).to_a.map do |number|
    if number % numbers[0] == 0 && number % numbers[1] == 0
      'FB'
    elsif number % numbers[0] == 0
      'F'
    elsif number % numbers[1] == 0
      'B'
    else
      number
    end
  end
  
  puts(result.join(' '))
end
