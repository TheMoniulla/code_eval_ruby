File.open('input.txt').each_line do |line|
  array = line.split(' ').map(&:to_f)
  puts array.sort.join(' ')
end
