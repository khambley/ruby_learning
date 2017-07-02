print "What number would you like to convert to Roman numerals? "
puts " "
puts "--- DOES NOT DIVIDE YET ---"
my_num1 = gets.chomp

roman_hash =     {"M" => 1000,
                  "D" =>  500,
                  "C" =>  100,
                  "L" =>   50,
                  "X" =>   10,
                  "V" =>    5,
                  "I" =>    1 }

roman_num = ''
my_num = my_num1

roman_hash.each do |ltr, value|
  roman_num += ltr * (my_num.to_i / value)
  my_num = my_num.to_i % value
end
puts 'Your number ' + my_num1.to_s + ' converts to the roman numeral ' + roman_num
puts " "

print "What number would you like to convert to Roman numerals? "
puts " "
puts "--- divides smaller before larger, ie IV = 4 ---"
my_num1 = gets.chomp

roman_hash =     {"M" => 1000,
                  "CM" => 900,
                  "D" =>  500,
                  "CD" => 400,
                  "C" =>  100,
                  "L" =>   50,
                  "XL" =>  40,
                  "X" =>   10,
                  "IX" =>   9,
                  "V" =>    5,
                  "IV" =>   4,
                  "I" =>    1 }

roman_num = ''
my_num = my_num1

roman_hash.each do |ltr, value|
  roman_num += ltr * (my_num.to_i / value)
  my_num = my_num.to_i % value
end
puts 'Your number ' + my_num1.to_s + ' converts to the roman numeral ' + roman_num
puts " "