# def ask_r question
#   puts question
#   reply = gets.chomp.downcase

#   if reply == 'yes'
#     true
#   elsif reply == 'no'
#     false
#   else
#     puts 'Please answer "yes" or "no".'
#     ask_r question # This is the magic line
#   end
# end
# ask_r 'Do you wet the bed? '

words = [['a0i0', 'a0i1','a0i2'],
            ['a1i0', 'a1i1', 'a1i2'],
             ['a2i0', 'a2i1', 'a2i2']]

def print_array words
  puts words
end
puts print_array(words)