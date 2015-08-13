DICTIONARY = {
  a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9
}

File.open('input.txt').each_line do |line|
  def hidden_digits(line)
    output = line.split('').map do |character|
      if character.match(/[a-j]/)
        DICTIONARY[character.to_sym]
      elsif character.match(/\d/)
        character
      end
    end.compact.join('')

    output = 'NONE' if output.empty?
    output
  end

  puts(hidden_digits(line))
end
