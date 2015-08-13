numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def multiply(nums)
  nums.each do |num|
    output = nums.map do |num2|
      (num * num2).to_s.rjust(3, ' ')
    end.join(' ').strip
    puts output.strip
  end
end

multiply(numbers)
