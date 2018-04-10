def searchNestedObj(hash, val)
  keys = hash.keys
  keys.each do |key|
    if hash[key].is_a?(Hash)
        return searchNestedObj(hash[key], val)
    elsif hash[key] == val
        return true
    end
end
return false

end
 sally = {
  username: 'sally',
  profile: {
    name: 'Sally',
    address: {
      city: 'San Francisco',
      state: 'CA'
    },
    age: 27,
  }
};

p searchNestedObj(sally, 'Sally')
p searchNestedObj(sally, 'San Francisco')
p searchNestedObj(sally, 94111)