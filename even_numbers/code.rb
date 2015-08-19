File.open('input.txt').each_line do |line|
  def even_or_odd(number)
    number.even? ? 1 : 0
  end

  puts(even_or_odd(line.to_i))
end
