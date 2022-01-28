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

num=n
count =0

temp=num.abs()
while temp!=0
  count+=1
  temp/=10
end

sum =0
temp1=num.abs()
while temp1!=0
  rem=temp1%10
  temp1/=10
  sum+=rem**count
end
if (sum==n)
  return true
else
  return false
end
end
