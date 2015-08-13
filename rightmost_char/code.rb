File.open('input.txt').each_line do |line|
  strings = line.strip.split(',')
  puts(strings[0].index(strings[1]))
end
