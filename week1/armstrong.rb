def armstrong_number(n)
    if n<0
        return false
    else    
        number_copy = n
        power = n.to_s.length
        sum = 0
        i = 0
        while i!=power
            sum += (number_copy%10)**power
            number_copy/=10
            i = i+1
        end
        if sum==n
            return true
        else
            return false
        end
    end
end
