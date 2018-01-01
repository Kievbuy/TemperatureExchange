print "Please, enter temperature (С or F):"
str = gets
exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split(" ")

abort "#{temp} invalid number." if temp !~ /-?\d+/

temp = temp.to_f

case scale
 when 'C', 'c'
   f = 1.8 * temp + 32
 when 'F', 'f'
   c = (5.0 / 9.0)*(temp - 32)
 else
   abort 'Необходимо задать С или F.'
end

if f.nil?
  print "#{c} degrees Celsius\n"
else
  print "#{f} degrees Fahrenheit\n"
end