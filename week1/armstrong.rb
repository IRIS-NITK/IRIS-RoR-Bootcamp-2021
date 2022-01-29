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
    puts "Enter a number"
    n=gets.chomp.to_i

    temp=n
    sum = 0

    while n!=0
        rem=n%10
        n=n/10
        sum=sum+rem*rem*rem
    end

    if(temp==sum)
        value=true
    else
       value=false
    end

    return value
end
