lucky_number = 15

loop do
  puts "What is the lucky number? "
  guess = gets.to_i
  if guess == lucky_number
    puts "You got it!"
    break
  end
end
