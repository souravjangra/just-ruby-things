module Enumerable
	def each_group_by_first_letter
		words = []
		current_char = self[0][0]
		self.each do |item|
			if current_char == item[0]
				words.push(item)
				if item == self[-1]
					yield current_char, words
				end
			else 
				yield current_char, words
				current_char = item[0]
				words.clear()
				redo
			end
		end
	end
end

x = ["abcd", "axyz", "able", "xyzab", "qrst", "sourav", "saurabh", "vivek", "nikhil","ruby"]
x.each_group_by_first_letter { |letter, words|
	puts "#{letter}: #{words}"
}
