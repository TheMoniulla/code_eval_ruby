class AgeDistribution < Struct.new(:age)
  AGE_DISTRIBUTION = {
    0..2 => "Still in Mama's arms",
    3..4 => "Preschool Maniac",
    5..11 => "Elementary School",
    12..14 => "Middle School",
    15..18 => "High School",
    19..22 => "College",
    23..65 => "Working for the man",
    66..100 => "The Golden Years",
  }

  def for_age
     result = AGE_DISTRIBUTION.find { |range, _| range.include?(age) }
     result.last rescue 'This program is for humans'
  end
end

File.open('input.txt').each_line do |line|
  puts AgeDistribution.new(line.to_i).for_age
end
