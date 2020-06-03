def concatenated_product(n, range)
    s = ""
    (range).each do |i|
        s += (n*i).to_s
    end
    return s.to_i
end

def is_pandigital(n)
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    (0..n.to_s.length-1).each do |i|
        arr.delete(n.to_s[i].to_i)
    end
    if arr.length == 0
        return true
    end
    return false
end

def is_nine_digit(n)
    return n.to_s.length == 9
end

max = 0
(2..50000).each do |i|
    (1..20).each do |n|
        num = concatenated_product i, 1..n
        if is_nine_digit(num) && is_pandigital(num)
            if num > max 
                max = num
            end
        end
    end
end
puts max