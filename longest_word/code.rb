class LongestWord < Struct.new(:words)
  def to_s
    words.max { |a, b| a.length <=> b.length }
  end
end

File.open('input.txt').each_line do |line|
  puts LongestWord.new(line.strip.split(' '))
end
