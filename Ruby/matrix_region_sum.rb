def matrix_region_sum(matrix, left_coordinates, right_coordinates)
    top_left = left_coordinates[0]
    bottom_right = right_coordinates[-1]

    sum = 0
    (top_left..right_coordinates[0]).each do |i|
        (left_coordinates[-1]..bottom_right).each do |j|
            sum += matrix[i][j]
        end
    end
    sum
end
matrix = [[1,2,3], [4,5,6], [7,8,9]]
p matrix_region_sum(matrix, [0,0], [1,2])
p matrix_region_sum(matrix, [1,1], [1,2])