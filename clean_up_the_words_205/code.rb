File.open('input.txt').each_line do |line|
  puts line.downcase.gsub(/[^a-z]+/, ' ').strip
end
