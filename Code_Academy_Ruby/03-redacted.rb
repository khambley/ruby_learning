puts "Text to search: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp
=begin
What could you do to make sure your redactor redacts a word
regardless of whether it's upper case or lower case?
=end

=begin
How could you make your program
take multiple, separate words to REDACT?
=end

=begin
How might you make a new redacted string and save it as 
a variable, rather than just printing it to the console?
=end

#Using regex pattern to delimit by <space> _,.!?
#words = text.split(/[ _,.!]/)
words = text.split(/[ _,.!?]/)
r_words = redact.split(/[ _,.!?]/)

words.each do |word|
  r_words.each do |r_word|
    array_length = words.size
      if word == r_word
          word.gsub!(r_word, "REDACTED")
      end
  end
  print word + " "
end
