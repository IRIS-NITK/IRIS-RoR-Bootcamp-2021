puts "Enter the number"
num=gets.chomp
n=Integer(num)
l=num.length
sum=0
while(n!=0)
    d=n%10
    x=d.pow(l)
    sum=Integer(x)+sum
    n=n/10
end

puts "Input:#{num}"
puts "Output:#{sum==Integer(num)}"
