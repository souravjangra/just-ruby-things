def each_starts_with(arr, str) 
	arr.each do |item|
		if item[0..1].eql?(str)
			puts item 
		end
	end
end

each_starts_with(["abcd", "axyz", "able", "xyzab", "qrst","abbaaba","abaababaa"], "ab")
