File.open('input.txt').each_line do |line|
  array = line.strip.split(',')
  puts array.uniq.join(',')
end
