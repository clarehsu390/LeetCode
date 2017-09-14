def caesar_cipher(str, shift)
    alphabet = ("a".."z").to_a
    new_str = ""

    str.each_char do |ch|
       new_str << " " if ch == " "
       old_idx = alphabet.index(ch)
       new_idx = (old_idx + shift) % alphabet.length

       new_str << alphabet[new_idx]
    end
    new_str
            
end

p caesar_cipher("abc", 1)
p caesar_cipher("zzz", 3)