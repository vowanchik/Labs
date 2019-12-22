require_relative 'func.rb'

puts "Введите строки (5-знак конца ввода)"
str = []
	i = 0 
	loop do
		a = gets
		break if a.to_i == 5
	   str[i] = a
	   i += 1
    end

puts stroki(str)