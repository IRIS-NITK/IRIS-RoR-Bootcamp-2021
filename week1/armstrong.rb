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
    # raise NotImplementedError # Delete this line and start coding here
    if (n<0)
      return false
    end

    num = n
    spare = n
    digits = 0
    sum = 0
    while (spare!=0)
      spare = spare/10
      digits = digits+1
    end
    while (n>0)
      sum+=(n%10)**digits
      n/=10
    end
    # return sum
    if (sum==num)
      return true
    else
      return false
    end
end
# puts(armstrong_number(8208))
