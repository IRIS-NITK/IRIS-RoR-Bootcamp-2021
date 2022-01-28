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
    if n<0
        puts false
    else    
        number = n
        power = n.to_s.length
        sum = 0
        i = 0
        while i!=power
            sum += (number%10)**power
            number/=10
            i = i+1
        end
        if sum==n
            puts true
        else
            puts false
        end
    end
end
print "Enter the number to be checked: "
n = gets.chomp.to_i
armstrong_number(n) 