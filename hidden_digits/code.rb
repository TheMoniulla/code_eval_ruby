class HiddenDigits < Struct.new :elements
  DICTIONARY = {
      a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9
  }

  def to_s
    digits.empty? ? 'NONE' : digits.join('')
  end

  private

  def digits
    elements.map do |character|
      character_to_digit(character)
    end.compact
  end

  def character_to_digit(character)
    if DICTIONARY.has_key?(character.to_sym)
      DICTIONARY[character.to_sym]
    elsif character.match(/\d/)
      character
    end
  end
end

File.open('input.txt').each_line do |line|
  puts HiddenDigits.new(line.split(''))
end
