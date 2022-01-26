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
    l = n.digits
    sum = 0
    for i in l do
        sum += i**3
    end
    puts sum
end
