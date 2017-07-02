=begin
  Takes input from user, builds a hash from input. Each key
  is the word from the user, each value is the number of times
  the word occurs
  A visual representation of data is called a histogram
=end
puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b}
frequencies.reverse!
frequencies.each {|word, frequency| puts word + " " + frequency.to_s }