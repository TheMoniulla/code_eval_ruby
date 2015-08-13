File.open('input.txt').each_line do |line|
  character = line.split('')

  def clean_up(words)
    words.map do |character|
      if character.match(/[a-zA-Z]/)
        character.downcase
      else
        ' '
       end
    end.join('')
  end

  puts(clean_up(character).gsub(/\s+/, ' ').strip)
end
