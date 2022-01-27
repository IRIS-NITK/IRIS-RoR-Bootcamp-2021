# An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.
# ==========================================================
# Author:      Arif Kalluru
# Title:       IRIS RoR Bootcamp 2021-22 Week 1 Assignment 1
# ==========================================================
def armstrong_number(n)
  num = n
  digits = num.abs.digits.count
  result = 0

  if num < 0
    false
  else
    until n == 0
      rem = n%10
      n = n/10
      result = result + rem**digits
    end

    num == result ? true : false
  end
end
