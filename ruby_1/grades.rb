print "What score did you get in the exam? "

score = gets.to_f

if score >= 86
  puts "You got an A"
elsif score >= 76
  puts "You got a B"
elsif score >= 64
  puts "You got a C"
elsif score >= 50
  puts "You got a D"
else
  puts "You Failed!"
end
