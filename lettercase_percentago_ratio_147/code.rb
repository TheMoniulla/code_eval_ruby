File.open('input.txt').each_line do |line|
  string = line.strip.split('')
  total_length = string.length

  def findcase(letters, regex)
    letters.map { |letter| letter.match(regex) }
  end

  def percentage(array, total_length)
    sprintf "%.2f", (array.join('').length.to_f * 100 / total_length.to_f).round(2)
  end

  lower = percentage(findcase(string, /[a-z]/), total_length)
  upper = percentage(findcase(string, /[A-Z]/), total_length)

  puts ('lowercase: ' + lower + ' uppercase: ' + upper)
end
