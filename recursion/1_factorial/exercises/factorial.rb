def factorial(num)
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
  return 1 if num == 1 || num == 0
  return nil if num < 0

  return num * factorial(num - 1)
end
