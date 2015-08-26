########################## Normal Mode ##########################

puts "*********** Normal Mode *********** \n\n"

num = 1
i = 100

while i > 0 do
  if num % 3 == 0 && num % 5 == 0
    puts "fizzbuzz"
  elsif num % 5 == 0
    puts "buzz"
  elsif num % 3 == 0
    puts "fizz"
  else
    puts "#{num}"
  end
  i -= 1
  num += 1
end

########################## Hard Mode ##########################

puts "*********** Hard Mode *********** \n\n"

def fizzbuzz(i)
  num = 1

  while i > 0 do
    if num % 3 == 0 && num % 5 == 0
      puts "fizzbuzz"
    elsif num % 5 == 0
      puts "buzz"
    elsif num % 3 == 0
      puts "fizz"
    else
      puts "#{num}"
    end
    i -= 1
    num += 1
  end
end

fizzbuzz(50)

########################## Refactored Mode ##########################

puts "*********** Refactored Mode *********** \n\n"

(1..100).each do |num|
  if (num % 15).zero?
    puts "fizzbuzz"
  elsif (num % 5).zero?
    puts "buzz"
  elsif (num % 3).zero?
    puts "fizz"
  else
    puts num
  end
end

def fizzbuzz(n)
  return 'fizzbuzz' if (n % 15).zero?
  return 'buzz'     if (n % 5).zero?
  return 'fizz'     if (n % 3).zero?
  n
end

1.upto(77) do |n|
  puts fizzbuzz(n)
end












