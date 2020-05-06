def funny_sort(arr)
	arr.sort! {	|a,b|
		a = a[/\d+/].to_i
		b = b[/\d+/].to_i
		a <=> b
	}
	arr.each do |item|
		puts "#{item}"
	end

end

str_array = ["-100x500","abc99.6","Sourav0.99x","Ruby51.25x"]
puts "Input array: "

str_array.each {
 	|item| puts "#{item}"
}

puts ""
puts "Output array: "
funny_sort(str_array)
