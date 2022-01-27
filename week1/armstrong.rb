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
    tmp = n
    sum = 0
    n_digits = n.to_s.length

    while n >= 1
        rem = n%10
        n = (n/10).floor()
        sum += (rem**n_digits)
    end
    
    if tmp == sum
        return true
    end

    return false
end
