class LowestUniqueNumberPostion < Struct.new(:numbers)
  def to_s
    lowest_unique_position.to_s
  end

  private

  def lowest_unique_position
    (numbers.index(lowest_unique_number) || -1) + 1
  end

  def lowest_unique_number
    unique_numbers.min
  end

  def unique_numbers
    stats.select { |_, counter| counter == 1 }.map(&:first)
  end

  def stats
    numbers.each_with_object(Hash.new(0)) { |number, memo| memo[number] += 1 }
  end
end

File.open('input.txt').each_line do |line|
  puts LowestUniqueNumberPostion.new(line.split(' '))
end
