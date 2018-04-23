def is_isomorphic(string1, string2)
    hash1 = {}
    string1.each_char.with_index do |ch, i|
        hash1[ch] = string2[i]
    end
    new_string = ""
    string2.each_char do |ch|
        mapped_key = hash1.select {|k,v| v == ch}
     if mapped_key != {}
            mapped_ch = mapped_key.first.first
            new_string <<  mapped_ch
        else
            return false
        end
    end
    string1 == new_string

end

p is_isomorphic('egg', 'foo')
p is_isomorphic('foo', 'bar')
p is_isomorphic('paper', 'title')