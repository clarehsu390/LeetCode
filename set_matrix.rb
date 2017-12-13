def set_zeroes(matrix)
(0..matrix.length - 1).each do |i|
    (0..matrix[0].length - 1).each do |j|
        if matrix[i][j] == 0
            (matrix[0].length).times do |m|
                matrix[i][m] = 0
            end
            (matrix.length).times do |n|
                matrix[n][j] = 0
            end
        end
    end
end
    matrix
            
end

p set_zeroes([[1,0,3],[0,4,5]])
p set_zeroes([[1], [0]])