count = 1

"a".upto("z") do |letter|
  puts letter * count
  count += 1
end

count = 0

"a".upto("z") {|letter| puts letter * (count += 1) }
