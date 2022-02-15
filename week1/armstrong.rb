
#An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.

def armstrong_number(n)
    num=n

    lst=[]
    while n!=0
        lst.push(n%10)
        n=n/10 
    end
    l=lst.length
    tot=0
    for i in 0...l do
        
        tot=tot+lst.at(i)**l
    end
    if num==tot 
        print("#{num} is amstrong number\n")
        return true
    else 
        print("#{num} not amstrong number\n")
        return false    
    end    
    
end
