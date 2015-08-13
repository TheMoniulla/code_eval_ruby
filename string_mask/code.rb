File.open('input.txt').each_line do |line|
  def uppercase_or_lowercase(string)
    word = string[0]
    number = string[1]
    output = ''
    for i in 0..number.length - 1
      if number[i] == '1'
        output += word[i].upcase
        else
        output += word[i].downcase
      end
    end
    output
  end

  string = line.split(' ')
  puts(uppercase_or_lowercase(string))
end
