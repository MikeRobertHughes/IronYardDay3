########################## Normal Mode ##########################

# num = 1
# i = 100

# while i > 0 do
#   if num % 3 == 0 && num % 5 == 0
#     puts "fizzbuzz"
#   elsif num % 5 == 0
#     puts "buzz"
#   elsif num % 3 == 0
#     puts "fizz"
#   else
#     puts "#{num}"
#   end
#   i -= 1
#   num += 1
# end

########################## Hard Mode ##########################

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
