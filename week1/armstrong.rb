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
    if(n<0)
        return false
    end
    n_s=n.to_s
    len=n_s.length()
    temp=len
    ans=0
    while(temp>0)
        ans=ans+((n_s[temp-1].to_i)**len)
        temp=temp-1
    end
    if(ans==n)
        return true
    else
        return false
    end
end
