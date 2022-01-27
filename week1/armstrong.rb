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

    while n > 0
        rem = n % 10
        sum += rem ** temp.to_s.length
        n /= 10
    end

    return temp == sum ? true : false

end

