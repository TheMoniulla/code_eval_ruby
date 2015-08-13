File.open('input.txt').each_line do |line|
  def cut_strings(string)
    if string.length <= 55
      text = string
    else
      words = string[0, 40].split(' ')
      text = words[0..-2].join(' ') + '... <Read More>'
    end
    text
  end
  puts cut_strings(line)
end
