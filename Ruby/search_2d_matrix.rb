def search_2d_matrix(arr, target)
    arr.each do |row|
        if row[0] < target
            row.each do |num|
                return true if target == num
            end
        end
    end
    false
end

matrix = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]

p search_2d_matrix(matrix, 13)