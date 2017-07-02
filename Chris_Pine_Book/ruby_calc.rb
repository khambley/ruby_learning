=begin
  Calculates # of hours in a year
             # of minutes in a year
             # of minutes in a decade
             # of seconds in a year
  Accepts user age in years and spits out age in seconds
  Edge case: What if user is under 1 year old? int spits out zero.
  Edge case: What if user enters commas when they enter seconds? need a way to delete commas and turn into int
             --clean the string before converting to int
  6/26/17 - converted result to string, scans every 3 chars, and adds a comma

=end

days = 365 # of days in a year
hours = 24 # of hours in a day
hours_in_a_year = days * hours # has to stay an int !important
def add_comma(str1)
  str1.reverse!
  str1.scan(/.{3}|.+/).join(',').reverse
end

puts 'There are ' + add_comma(hours_in_a_year.to_s) + ' hours in a year.'

minutes = 60 # of minutes in an hour
minutes_in_a_year = (hours_in_a_year * minutes)
puts 'There are ' + add_comma(minutes_in_a_year.to_s) + ' minutes in a year'

minutes_in_a_decade = minutes_in_a_year * 10
puts 'There are ' + add_comma(minutes_in_a_decade.to_s) + ' minutes in a decade'

seconds_in_a_minute = 60
seconds_in_a_hour = seconds_in_a_minute * 60
seconds_in_a_day = seconds_in_a_hour * 24
seconds_in_a_year = seconds_in_a_day * 365
puts 'There are ' + add_comma(seconds_in_a_year.to_s) + ' seconds in a year'
print "How many years old are you? "
user_age_in_years = gets.chomp

user_age_in_seconds = seconds_in_a_year * user_age_in_years.to_i

# converts the integer to a string
str = user_age_in_seconds.to_s
# reverses the string so it starts scanning at end of string
str.reverse!
# regex .{3} matches any 3 characters, .+ matches chars at end of string, .join joins array to string with ','
puts 'You entered ' + user_age_in_years.to_s + ' years old. You are ' + 
  str.scan(/.{3}|.+/).join(',').reverse + ' seconds old.'


print "How many seconds old are you? "
user_age_in_seconds = gets.chomp
user_age_in_years = user_age_in_seconds.to_i / seconds_in_a_year
puts 'You entered ' + add_comma(user_age_in_seconds.to_s) + ' seconds. You are ' + user_age_in_years.to_s + ' years old.'

