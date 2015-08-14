File.open('input.txt').each_line do |line|
  numbers = line.scan(/-?\d+/)

  x1, y1, x2, y2 = *numbers.map! {|number| number.to_i }

  vector_x = x1 - x2
  vector_y = y1 - y2

  puts Math.sqrt((vector_x**2) + (vector_y**2)).to_i
end
