# An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.
def pow(a,b)
    result = 1
    b.times do
        result=result*a
    end
    return result
  end
  def armstrong_number(n)
    total_digits=0
    digit=0
    num=n
    while(num>0)
      #digit=num%10
      num/=10
      total_digits=total_digits+1
    end
    i=1
    sum=0
    number=n
    while i<=total_digits
      digit=n%10
      n=n/10
      sum+=pow(digit,total_digits)
      i+=1
    end
  if (number==sum)
      return "true"
  else
      return "false"
  end
  
  end
  
  n=gets.chomp().to_i
  
  armstrong_number(n)
  
  
