require 'json'
File.open('input.txt').each_line do |line|
  line = JSON.parse(line.strip)
  array = line['menu']['items']

  def items_with_label(array)
    array.select do |menu|
      !menu.nil? && menu['label']
    end
  end

  def sum_of_ids(array)
    items_with_label(array).inject(0) do |sum, ids|
      sum + ids['id']
    end
  end

  puts(sum_of_ids(array))
end
