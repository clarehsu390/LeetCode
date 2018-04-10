def product_without_el(arr)
    result = []
    product_before_idx = 1
    i = 0
    while i < arr.length
        result[i] = product_before_idx
        product_before_idx *= arr[i]
        i += 1
    end
    j = arr.length - 1
    product_after_idx = 1
    while j > 0
        result[j] *= product_after_idx
        product_after_idx *= arr[j]
        j -= 1
    end
    result
end

p product_without_el([1,2,3,4])
        