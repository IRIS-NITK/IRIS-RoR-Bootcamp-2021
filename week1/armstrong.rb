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
    a = n.to_s.chars.map { |digit| digit.to_i }
    puts(a)
    sum = 0
    l = a.length()
    a.each{ |d| sum += d**l}
    return sum == n
end
