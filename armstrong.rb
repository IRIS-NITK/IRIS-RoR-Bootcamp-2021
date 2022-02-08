def armstrong_number(n)
    if n == 0
        return false
    elsif n<=0
        return false
    else
        number=n
        power=n.to_s.length
        sum=0
        for i in 1..n do
            sum+=(number%(10))**power
            number=number/10
        end
        if sum==n
            return true
        else
            return false
        end
    end
end
