print "What is the temperature outside? "

temp = gets.to_f

# if the expression we give to the if statement is true (more specifically truthy)
# it will execute the block of code inside the `if` statement, otherwise, it will
# execute the block inside the `else` statement
# if temp > 25
#   puts "It's warm outside"
# else
#   puts "It's cold outside"
# end

# if: required: you should have the `if` at the very  beginning. You can only
#     have one if in a given statement. Must take a condition (exprsesion).
# elsif: optional, must take a condition. You can have as many as you want
# else: optional, doesn't take a condition (exprsesion). You can only have one.

if temp > 35
  puts "It's very hot outside"
elsif temp > 25
  puts "It's warm outside"
elsif temp > 15
  puts "It's cool outside"
else
  puts "It's cold outside"
end
