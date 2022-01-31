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
    num = n
    temp = num
    digits = 0
    sum = 0

    while (temp>0)
	    digits+=1
	    temp=temp/10
    end

    temp = num

    while (temp > 0)
        sum += (temp%10)**digits
        temp = temp/10
    end

    if sum == num
        return true
    else
        return false
    end
end