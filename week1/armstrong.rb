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
    sum = 0
    i = 0
    arr = [1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 16, 17, 19, 20, 21, 23, 24, 25, 27, 29, 31, 32, 33, 34, 35, 37, 38, 39] # From given reference link, these are the possible powers to generate an n-narcissistic number.
    while (i<arr.length)
        while (num>0)
            d = num % 10
            sum = sum + d**arr[i]
            num = num / 10
        end
        if (n==sum)
            return true
        end
        sum = 0
        i = i + 1
        num = n
    end
    if (n==sum)
        return true
    else
        return false
    end
end