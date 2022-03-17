# An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.

def armstrong_number(n)
  temp = n
  i = 0
  while n >= 10 ** i
    i = i + 1
  end

  j = 0, sum = 0
  for j in 1..i do
    digit = n % 10
    n = n / 10
    smallsum = digit ** i
    sum = sum + smallsum
  end

  return (sum == temp)

end
