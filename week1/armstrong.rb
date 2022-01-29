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
  sum = 0
  i = 0
  if n >= 0
    while temp != 0
      temp /= 10
      i += 1
    end
    temp = n
    while temp != 0
      sum += (temp % 10)**i
      temp /= 10
    end
    return sum == n
  else
    return false
  end
end