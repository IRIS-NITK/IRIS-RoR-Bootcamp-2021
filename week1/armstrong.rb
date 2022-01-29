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
   if n<0
       return false
   end
    if n==0
        return true
    end
    no_of_digits=math.log(n,10).floor+1
    final=0
    temp=n
    while temp>0
        rem=temp%10
        final=final+ rem**no_of_digits
        temp=temp/10
    end
    if (final==n)
        return true
    end
    return false
    
end
