print "Enter temperature and scale (C or F): "
input = gets.chomp.strip

exit if input.empty?

temperature, scale = input.split(" ")

unless temperature =~ /-?\d+(\.\d+)?/
  abort "#{temperature} is an invalid number."
end

temperature = temperature.to_f

case scale.downcase
when "c"
  fahrenheit = (temperature * 9 / 5) + 32
  puts "#{temperature} degrees Celsius is #{fahrenheit} degrees Fahrenheit."
when "f"
  celsius = (temperature - 32) * 5 / 9
  puts "#{temperature} degrees Fahrenheit is #{celsius} degrees Celsius."
else
  abort "Must specify C or F for the scale."
end
