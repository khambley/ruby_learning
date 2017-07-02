print "What is the first number? "
my_num1 = gets.chomp
print "What is the second number? "
my_num2 = gets.chomp

puts 'First number: ' + my_num1.to_s + ' / Second number: ' +  my_num2.to_s + ' = ' + 
(my_num1.to_i / my_num2.to_i).to_s

puts 'First number: ' + my_num1.to_s + ' % Second number: ' +  my_num2.to_s + ' = ' + 
(my_num1.to_i % my_num2.to_i).to_s


