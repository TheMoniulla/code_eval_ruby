File.open('input.txt').each_line do |line|
  def age_distribution(line)
    if line >= 0 && line <= 2
      "Still in Mama's arms"
    elsif line >= 3 && line <= 4
      'Preschool Maniac'
    elsif line >= 5 && line <= 11
      'Elementary School'
    elsif line >= 12 && line <= 14
      'Middle School'
    elsif line >= 15 && line <= 18
      'High School'
    elsif line >= 19 && line <= 22
      'College'
    elsif line >= 23 && line <= 65
      'Working for the man'
    elsif line >= 66 && line <= 100
      'The Golden Years'
    else
      'This program is for humans'
    end
  end

  line = line.to_i
  puts(age_distribution(line))
end
