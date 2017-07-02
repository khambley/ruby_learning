# In Duby, all variables live in the same scope

def square(x)
  puts x * x
end

x = 5
square(x)