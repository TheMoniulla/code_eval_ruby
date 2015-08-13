File.open('input.txt').each_line do |line|
  puts line.squeeze("a-zA-Z")
end
