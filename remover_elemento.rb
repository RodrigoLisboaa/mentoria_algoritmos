puts "Remover elemento"
def remove_element(nums, val)
  k = 0 

  nums.each do |num|
    if num != val
      nums[k] = num 
      k += 1        
    end
  end

  k 
end

# Exemplos de uso
nums1 = [3, 2, 2, 3]
val1 = 3
k1 = remove_element(nums1, val1)
puts "k = #{k1}, nums = #{nums1[0...k1] + ['_'] * (nums1.length - k1)}"
# Saída: k = 2, nums = [2, 2, "_", "_"]

nums2 = [0, 1, 2, 2, 3, 0, 4, 2]
val2 = 2
k2 = remove_element(nums2, val2)
puts "k = #{k2}, nums = #{nums2[0...k2] + ['_'] * (nums2.length - k2)}"
# Saída: k = 5, nums = [0, 1, 3, 0, 4, "_", "_", "_"]