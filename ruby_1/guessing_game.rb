correct_guess = rand(100)

number_of_guesses = 1

loop do
  puts "Guess the number: "
  guess = gets.to_i

  if guess > correct_guess
    puts "Guess a lower number"
  elsif guess < correct_guess
    puts "Guess a higher number"
  else
    puts "You got it!"
    break
  end
  number_of_guesses += 1
end

puts "You got it in #{number_of_guesses} time(s)"
