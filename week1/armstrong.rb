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
    temp=n
    d=0
    l=0
    while temp>0
      l+=1
      temp/=10
    end  
      
    temp=n
    sum=0
    while temp>0
      d=temp%10
      sum+=(d**l)
      temp/=10
    end  
      
    if sum==n
      puts "true"
      return true
    else
      puts "false"
      return false
    end     
      
        
end

