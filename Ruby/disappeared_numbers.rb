#448 in leetcode

def find_disappeared_numbers(arr)
    hash = {}
    result = []
    arr.each do |num|
        hash[num] = true
    end

    (1..arr.length).each do |el|
        result << el unless hash[el]
    end
    result
end

p find_disappeared_numbers([4,3,2,7,8,2,3,1])