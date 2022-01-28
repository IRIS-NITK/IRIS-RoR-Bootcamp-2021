# An armstrong number is a number such that sum of cubes of its digits
# is equal to the number itself.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.

def armstrong_number(n)
    sum = 0
    n_copy = n
    p = n.to_s.length
    while n_copy > 0 do
      x = n_copy % 10
      n_copy /= 10
      sum += x ** p
    end
    return sum == n
end 