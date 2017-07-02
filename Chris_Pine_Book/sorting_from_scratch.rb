
original_list = ['beta','theta','alpha','gamma','delta','zeta','iota','kappa','lamda','sigma','omega','psi',
                 'chi','phi','tau','pi','xi','rho']
=begin
def sort my_word_list
  recursive_sort my_word_list, []
end

def recursive_sort unsorted_list, sorted_list

end
=end
# i = 0 # i for index
# swapped = true
# loop do
#   swapped = false
#   while i < original_list.length - 2
#     if original_list[i] > original_list[i+1]
#       y = original_list[i]
#       x = original_list[i+1]
#       original_list[i] = x
#       original_list[i+1] = y
#     original_list[i], original_list[i+1] = original_list[i+1], original_list[i]
#     swapped = true
#     end
#     #puts original_list[i]
#     #puts original_list[i+1]
#     i += 1
#   end
#   break unless swapped
# end
# puts original_list

# swapped = true
# while swapped
#   swapped = false
#   0.upto(original_list.size-2) do |i|
#     if original_list[i] > original_list[i+1]
#       original_list[i], original_list[i+1] = original_list[i+1], original_list[i]
#       swapped = true
#     end
#   end
# end
# puts original_list

i = 0
swapped = true
while swapped
  swapped = false
  
    if original_list[i] > original_list[i+1]
      original_list[i], original_list[i+1] = original_list[i+1], original_list[i]
      swapped = true
    end
    i += 1
  end
end
puts original_list
