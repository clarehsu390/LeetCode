def add_two_nums(list1, list2)
 
    sum = list1.reverse.join.to_i + list2.reverse.join.to_i
    sum.to_s.chars.reverse.map(&:to_i)
    
end

p add_two_nums([2,4,3], [5,6,4])