File.open('input.txt').each_line do |line|
  def swap_case(string)
    string.map do |letter|
      if letter.match(/[a-z]/)
        letter.upcase
      elsif letter.match(/[A-Z]/)
        letter.downcase
      else
        letter
      end
    end.join('')
  end
  string = line.split('')
  puts(swap_case(string))
end
