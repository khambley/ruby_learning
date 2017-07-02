def alphabetize(array1, rev=false)
  if rev
    array1.sort {|item1, item2| item2 <=> item1}
  else
    array1.sort {|item1, item2| item1 <=> item2}
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax",
         "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"