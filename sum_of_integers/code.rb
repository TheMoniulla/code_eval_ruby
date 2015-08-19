lines = File.open('input.txt').lines
puts lines.map(&:to_i).reduce(:+)
