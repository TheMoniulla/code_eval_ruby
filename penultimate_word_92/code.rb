File.open('input.txt').each_line do |line|
  puts line.split(' ')[- 2]
end
