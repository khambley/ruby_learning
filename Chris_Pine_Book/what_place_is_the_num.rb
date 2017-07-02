print "What number would you like to convert to Roman numerals? "
my_number = gets.chomp

numerals_hash =  {"M" => 1000,
                  "D" =>  500,
                  "C" =>  100,
                  "L" =>   50,
                  "X" =>   10,
                  "V" =>    5,
                  "I" =>    1 }

#numerals_hash.each do | num_key, num_value |
#  puts num_key + ': ' + num_value.to_s
#end
convertedNumeral = []
quoitent = my_number.to_i / 1000
remainder = my_number.to_i % 1000

puts 'The quoitent is: ' + quoitent.to_s
puts 'The remainder is: ' + remainder.to_s

if quoitent > 0
  puts 'The ' + quoitent.to_s + ' is in the thousandth place.'
  quoitent.times {convertedNumeral.push("M")}
  convertedNumeral.each do |str|
    print str
  end
  puts " "
else
  puts 'Your number is less than a thousand.'
end
if remainder > 0
  quoitent = remainder / 100
  puts 'The quoitent is: ' + quoitent.to_s
  puts 'The ' + quoitent.to_s + ' is in the hundredths place.'
  quoitent.times {convertedNumeral.push("D")}
  convertedNumeral.each do |str|
    print str
  end
  puts " "
else
  puts 'Your number is less than a hundred.'
end

