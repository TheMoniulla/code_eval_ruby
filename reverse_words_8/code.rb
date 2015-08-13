File.open('input.txt').each_line do |line|
  puts line.split(' ').reverse.join(' ')
end
