#iterate through, check if the letters are the same
#if so, push that element at that index
#else push new array


def group_anagrams(arr)
    hash = {}
    arr.each do |el|
        if hash[el.chars.sort]
            hash[el.chars.sort] << el
        else
            hash[el.chars.sort] = [el]
        end
    end

    hash.values
        
        
        
end

p group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
