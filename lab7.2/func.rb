class Troyka
	def initialize (a,b)
		@a = a.to_i
		@b = b.to_i
		@res = @a + @b
	end

	def out 
		puts "Первое число: #{@a}, Второе число: #{@b}, Результат сложения: #{@res}"
	end
end

class Troyka_Scobkah < Troyka
	def out
			puts "Первое число: (#{@a}), Второе число: (#{@b}), Результат сложения: (#{@res})"
	end
end
Obj1 = Troyka.new(1,2)
Obj1.out
Obj2 = Troyka_Scobkah.new(3,4)
Obj2.out