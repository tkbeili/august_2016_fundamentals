print "What is the year of your car: "

year = gets.to_i

if year > 2016
  puts "The car is from the future"
elsif year == 2016
  puts "The car is brand new"
elsif year > 2010
  puts "the car is new"
elsif year > 2000
  puts "The car is old"
else
  puts "The car is very old"
end


if year < 2000
  puts "The car is very old"
elsif year >= 2001 && year < 2010
  puts "The car is getting old"
elsif year >= 2010 && year < 2015
  puts "The car is new"
else
  puts "The car is brand new"
end
