File.open('input.txt').each_line do |line|
  times = line.split(' ')

  def our_times(time, index)
    time[index].split(':')
  end

  def parts_of_time(time, index)
    time[index].to_i
  end

  def time_in_seconds(time)
    parts_of_time(time, 0) * 3600 + parts_of_time(time, 1) * 60 + parts_of_time(time, 2)
  end

  time_difference = (time_in_seconds(our_times(times, 0)) - time_in_seconds(our_times(times, 1))).abs
  s = time_difference % 60
  m = (time_difference % 3600 - s) / 60
  h = (time_difference - time_difference % 3600) / 3600

  def delta_time(hours, minutes, seconds)
    array = [hours.to_s, minutes.to_s, seconds.to_s]
    for i in 0..array.length - 1 do
      array[i] = '0' + array[i] if array[i].length < 2
    end
    array.join(':')
  end

  puts delta_time(h, m, s)
end
