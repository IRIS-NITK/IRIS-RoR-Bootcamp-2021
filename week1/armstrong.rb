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

    sum = 0
    origional_no = n

    len = n.to_s.length

    if n < 0 
        puts("false")
        
    else    
        
        while n != 0
        digit = n%10
        sum += digit.pow(len)
        n = n/10
        end

        if sum == origional_no
        puts("true")
        else
        puts("false")
        end

    end 

end

puts("Enter number")
n = gets.chomp.to_i
armstrong_number(n)

end

