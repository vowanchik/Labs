require_relative 'func.rb'

puts "Введите строки (Ctrl+D для остановки)"
arr = STDIN.map(&:chomp)
	
puts "Ответ:  #{stroki(arr)}"

