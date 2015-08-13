File.open('input.txt').each_line do |line|
  array = line.split(' ')
  element = nil
  result = []
  
  array.each do |number|
    if element != number
      result << [1, number]
    else
      result.last[0] = result.last[0] + 1
    end
    element = number
  end

  puts result.join(' ')
end
