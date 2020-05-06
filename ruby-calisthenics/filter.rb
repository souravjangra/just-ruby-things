def filter(arr, hash={})
	new_arr = Array.new()
	arr.each do |item|
		if hash[:min] 
			if item < hash[:min]
			else
				if hash[:odd]
					if hash[:scale] 
						new_arr.push(item*hash[:scale]) unless item%2 == 0
					else
						new_arr.push(item) unless item%2 == 0
					end
				elsif hash[:even]
					if hash[:scale] 
						new_arr.push(item*hash[:scale]) unless item%2 != 0
					else
						new_arr.push(item) unless item%2 != 0
					end
				else 
					new_arr.push(item)
				end
			end
		elsif hash[:max]
			if item > hash[:max]
			else 
				if hash[:odd]
					if hash[:scale] 
						new_arr.push(item*hash[:scale]) unless item%2 == 0
					else
						new_arr.push(item) unless item%2 == 0
					end
				elsif hash[:even]
					if hash[:scale] 
						new_arr.push(item*hash[:scale]) unless item%2 != 0
					else
						new_arr.push(item) unless item%2 != 0
					end
				else 
					new_arr.push(item)
				end
			end
		else 
			new_arr.push(item)
		end
	end
	new_arr.each do |item|
		puts item
	end
end

nums = [6, -5, 319, 400, 18, 94, 11]
#filter(nums, :min=>10, :max=>350, :odd=>1, :scale=>2)
#filter(nums, :max=>0)
filter(nums)
