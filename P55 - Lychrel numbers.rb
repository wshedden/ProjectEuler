def lychrel(n, iteration)
    if iteration >= 50
        return true
    end
    n2 = n+n.to_s.reverse.to_i
    if n2 == n2.to_s.reverse.to_i
        return false
    end
    return lychrel(n2.to_i, iteration+1)
end

total = 0
(1..9999).each do |n|
    if lychrel(n, 1)
        total+=1
    end
end

puts total