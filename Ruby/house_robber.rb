def house_robber(nums)
    return 0 if nums.nil? || nums.length == 0

    max_at = []
    max_at << {robbed: nums.first, not_robbed: 0}

    nums[1..-1].each_with_index do |num, idx|
        max_at << {robbed: max_at[idx-1][:not_robbed] + num,
                not_robbed: [max_at[idx-1]][:robbed],  max_at[idx - 1][:not_robbed]].max}
    end

    return [max_at[-1][:robbed], max_at[-1][:not_robbed]].max
        
end