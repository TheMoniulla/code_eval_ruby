sum = 0
File.open('input.txt').each_line do |line|
  sum += line.to_i
end
puts(sum)
