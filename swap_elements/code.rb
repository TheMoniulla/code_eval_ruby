File.open('input.txt').each_line do |line|
  array = line.strip.split(':')
  nums = array[0].split(' ').map(&:to_i)
  indexes = array[1].split(',')

  def swap_elements(nums, indexes)
    indexes.each do |element|
      index = element.split('-').map(&:to_i)
      first_num = index[0]
      second_num = index[1]
      result = nums[first_num]
      nums[first_num] = nums[second_num]
      nums[second_num] = result
    end
    nums
  end
  puts(swap_elements(nums, indexes).join(' '))
end
