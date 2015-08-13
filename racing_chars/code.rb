last_move = nil

File.open('input.txt').each_line do |line|
  line = line.split('')

  def chose_move(last_move, current_move)
    if last_move.nil? || last_move == current_move
      '|'
    elsif last_move > current_move
      '/'
    elsif last_move < current_move
      '\\'
    end
  end

  position = line.index('C') ? line.index('C') : line.index('_')

  current_move = position
  line[position] = chose_move(last_move, current_move)
  last_move = position

  puts line.join('')
end
