class MixedContent < Struct.new(:text)
  def to_s
    collection.map { |element| element.join(',') }.join('|')
  end

  private

  def collection
    [words, numbers].select(&:any?)
  end

  def words
    text.scan(/[a-zA-z]+/)
  end

  def numbers
    text.scan(/\d+/)
  end
end

File.open('input.txt').each_line do |line|
  puts MixedContent.new(line)
end
