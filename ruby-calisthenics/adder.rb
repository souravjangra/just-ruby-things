class Adder
	def initialize(num)
		@num=num
	end
	def method_missing()
	end
end

x = Adder.new(10)
Adder.class_eval do
	def plus(i)
		i=i+@num
		puts i
	end
end

print "x.plus(20) : "
x.plus(20)
puts ""
print "x.plus(25) : "
x.plus(25)
puts ""
print "x.minus(2) : "
x.minus(2)
