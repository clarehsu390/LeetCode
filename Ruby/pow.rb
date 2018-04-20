def pow(x,n)
    
    if n < 0
        current = 1
        (n.abs).times do 
            current /= x.to_f
        end
    else 
        current = x
        (n-1).times do 
            current *= current
        end
    end
    current

end

p pow(100, -2)