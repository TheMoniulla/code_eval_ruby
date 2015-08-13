File.open('input.txt').each_line do |line|
  strings = line.split(',')

  def words(strings)
    strings.select do |character|
      character.match(/[a-z]/)
    end.join(',')
  end

  def numbers(strings)
    strings.select do |digit|
      digit.match(/\d/)
    end.join(',')
  end

  puts(words(strings) + '|' + numbers(strings))
end
