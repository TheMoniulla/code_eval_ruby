class SetIntersection < Struct.new(:set_a, :set_b)
  def to_s
    intersection.join(',')
  end

  private

  def intersection
    set_a & set_b
  end
end

File.open('input.txt').each_line do |line|
  sets = line.split(';').map { |set| set.split(',') }
  puts SetIntersection.new(*sets)
end
