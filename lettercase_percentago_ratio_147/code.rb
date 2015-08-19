class LettercasePercentageRatio
  attr_reader :string, :string_length

  def initialize(string)
    @string = string
    @string_length = string.length
  end

  def to_s
    lower = percentage(findcase(/[a-z]/))
    upper = percentage(findcase(/[A-Z]/))
    'lowercase: ' + lower + ' uppercase: ' + upper
  end

  private

  def findcase(regex)
    string.select { |letter| letter.match(regex) }
  end

  def percentage(array)
    sprintf '%.2f', (array.size * 100 / string_length).round(2)
  end
end

File.open('input.txt').each_line do |line|
  puts LettercasePercentageRatio.new(line.strip.split(''))
end
