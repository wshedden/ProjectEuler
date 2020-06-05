n = 1000
hash = {}
(1..n).each do |a|
    (1..n).each do |b|
        perimeter = a * b/2
        if hash.key? perimeter
            hash[perimeter] += 1
        else
            hash.store(perimeter, 0) unless perimeter > 1000
        end
    end
end

def largest_hash_key(hash)
    hash.max_by{|k, v| v}
end

print largest_hash_key hash