puts "Duas somas"
def two_sum(nums, target)
  seen = {} 

  nums.each_with_index do |num, index|
    complement = target - num 


    if seen.key?(complement)
      return [seen[complement], index] 
    end

    seen[num] = index
  end
end

# Exemplos de uso
puts two_sum([2, 7, 11, 15], 9).inspect # Saída: [0, 1]
puts two_sum([3, 2, 4], 6).inspect      # Saída: [1, 2]
puts two_sum([3, 3], 6).inspect         # Saída: [0, 1]