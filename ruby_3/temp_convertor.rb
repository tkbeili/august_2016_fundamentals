# Given a hash of average temperatures:
# average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}
# Create another hash called average_temperature_in_f that has the same keys (city names) but the temperatures are in Fahrenheit instead of Celcius.
#
# The formula to convert Celsius to Fahrenheit is: F = C * 9/5 + 32

average_temperature_in_c = { vancouver: 13.7, edmonton: 8.5, Calgary: 10.5 }

average_temperature_in_f = {} # Hash.new

average_temperature_in_c.each do |city, temp|
  average_temperature_in_f[city] = temp * 9 / 5 + 32
end

print average_temperature_in_f
