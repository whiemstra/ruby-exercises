# Challenge
#
# You have most of the tools now to solve the well-known "fizzbuzz" challenge. It goes like this:
#
#         For the numbers 1 through 100...
#     If the number is divisible by 3, print "fizz"
# If the number is divisible by 5, print "buzz"
# If the number is divisible by both 3 and 5, print "fizzbuzz"
# Otherwise print the number
#
# Start with this template:
#
#         (1..100).each do |number|
# Your code here

-----------------------------------------------------------------------------------------------------------------------

(1..100).each do |i|
  if i % 3 == 0 and i % 5 == 0
    puts "#{i} fizzbuzz"
  elsif i % 3 == 0
    puts "#{i} fizz"
  elsif i % 5 == 0
    puts "#{i} buzz"
  else 
    puts "#{i} FRUIT LOOP!!!"
  end
end


(1..100).each do |number|
  if number % 3 == 0
    puts "fizz"
  elsif number % 5 == 0
    puts "buzz"
  else number % 15 == 0
    puts "fizzbuzz"
  end
end
