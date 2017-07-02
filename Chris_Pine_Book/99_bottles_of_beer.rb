number = 99

while number >= 2
  puts number.to_s + ' bottles of beer on the wall,'
  puts number.to_s + ' bottles of beer,'
  puts 'take one down, pass it around,'
  puts (number - 1).to_s + ' bottles of beer on the wall.'
  puts " "
  number -= 1
  if number == 0
    break
  end
end
puts 'no bottles of beer on the wall.'