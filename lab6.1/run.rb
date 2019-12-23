

require_relative 'func.rb'
puts "Введите радиус окружности: "
x = gets.to_i
puts 'E = 10^-3; S:'

puts S(0.001,x)

puts 'E = 10^-4; S:'
puts S(0.0001,x)
