#create hash, sorted word as key
#if key exists, push that element into value @ key
#else create new key value pair


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
