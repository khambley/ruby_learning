
puts 'What would you like to say to Grandpa?'
puts '---type bye to exit'
counter = 0
while counter < 3
  input = gets.chomp
  if input == input.upcase && input != 'BYE'
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
  elsif input == 'BYE'
    counter += 1
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end
puts 'good-bye'
