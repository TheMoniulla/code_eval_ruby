File.open('input.txt').each_line do |line|
  strings = line.split('')

  def roller_coaster(strings)
    upper = true
    strings.map do |letter|
      if letter.match(/[a-zA-Z]/)
        if upper
          upper = false
          letter.upcase
        else
          upper = true
          letter.downcase
        end
      else
        letter
      end
    end.join('')
  end

  puts(roller_coaster(strings))
end
