def first_bad_version(n)
    (1..n).each do |version|
       return version if is_bad_version(version)
    end
    -1
end

def first_bad_version2(n)
    mid = (n/2).floor
    left = [0..mid]
    right = [mid+1..n]
    if n <= 2
        (0..n).each do |i|
            return i if is_bad_version(i)
        end
    end

    is_bad_version(mid) ? first_bad_version2(left) : first_bad_version2(right)
end