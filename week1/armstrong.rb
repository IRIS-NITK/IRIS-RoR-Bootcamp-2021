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
    arm=0
    noDigits=0

    while n>0 do
        noDigits=noDigits+1
        n=n/10
    end

    n=temp

    while n>0 do
        rem=n%10
        arm=arm+rem**noDigits
        n=n/10
    end
    
    return arm==temp
end
