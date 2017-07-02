# Now that we can direct our program using if / else statements, 
# we can produce different results based on different user input.

# In this project, we'll combine control flow with a few new Ruby 
# string methods to Daffy Duckify a user's string, replacing each 
# "s" with "th".

print "What would you like to Duckify?"
user_input = gets.chomp
user_input.downcase! # ! saves value in same variable
if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "#{user_input}"
else
    print "There are no 's's in your string"
end