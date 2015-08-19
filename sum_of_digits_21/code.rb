File.open('input.txt').each_line do |line|
  numbers = line.split('').map(&:to_i)
  puts numbers.reduce(:+)
end
