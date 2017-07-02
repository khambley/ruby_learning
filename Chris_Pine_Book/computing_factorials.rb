# The factorial of an integer is the product of all the integers from itself down to 1.
# factorial of 3 = 3 x 2 x 1 = 6
# factorial of 10 = 10 x 9 x 8 x 7 x 6 x 5 x 4 x 3 x 2 x 1

def factorial num
  if num < 0
    return 'You can\'t take the factorial of a negative number!'
  end
  if num <= 1
    1
  else
    num * factorial(num-1)
  end
end
puts factorial(3)
puts factorial(30)
