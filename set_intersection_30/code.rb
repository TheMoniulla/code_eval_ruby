File.open('input.txt').each_line do |line|
  array = line.split(';')
  array1 = array[0].split(',')
  array2 = array[1].split(',')

  def set_intersection(set1, set2)
    set1.select do |integer|
      !set2.index(integer).nil?
    end.join(',')
  end
  
  puts set_intersection(array2, array1)
end
