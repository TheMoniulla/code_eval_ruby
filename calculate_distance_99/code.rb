class DistanceCalculation < Struct.new(:x1, :y1, :x2, :y2)
  def distance
    Math.sqrt((vector_x**2) + (vector_y**2)).to_i
  end

  private

  def vector_x
    x1 - x2
  end

  def vector_y
    y1 - y2
  end
end

File.open('input.txt').each_line do |line|
  input = line.scan(/-?\d+/).map(&:to_i)
  puts DistanceCalculation.new(*input).distance
end
