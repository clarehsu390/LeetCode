def rotate(matrix)
    # matrix.reverse!
    length = matrix[0].length
    (0..matrix.length - 1).each do |i|
        (i+1..matrix[i].length - 1).each do |j|
            temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        end
    end
    matrix
end

p rotate([
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ]) 
  == [
    [7,4,1],
    [8,5,2],
    [9,6,3]
  ]