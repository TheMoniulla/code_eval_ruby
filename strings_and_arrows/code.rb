File.open('input.txt').each_line do |line|
  string = line
  def arrows(string)
    arrow1 = '>>-->'
    arrow2 = '<--<<'
    total = 0
    for i in 0..string.length - 1
      total += 1 if string[i, 5] == arrow1 || string[i, 5] == arrow2
    end
    total
  end

  puts(arrows(string))
end
