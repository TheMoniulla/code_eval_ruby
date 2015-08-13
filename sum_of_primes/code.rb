def prime_numbers(number)
  for i in 2..number - 1
    return false if number % i == 0
  end
  true
end

count = 1
sum = 0
number = 1
while count <= 1000
  number += 1
  if prime_numbers(number)
    sum += number
    count += 1
   end
end

puts(sum)
