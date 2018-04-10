def pascals(num_rows)
    return [1] if num_rows == 1
    return [[1], [1,1]] if num_rows == 2
    previous = pascals(num_rows - 1)
    result = []
    (previous[-1].length - 1).times do |i|
       result.push(previous.last[i] + previous.last[i + 1])
    end
    arr = [1, result, 1].flatten!
    previous << arr
end

p pascals(4)
p pascals(5)