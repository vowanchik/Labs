# frozen_string_literal: true

require_relative 'func.rb'
puts 'Введите радиус окружности: '
x = gets.to_i
puts 'E = 10^-3; S:'

values = func(0.001, x).take_while { |ac, b, a| ((ac < b) && a.positive?) }
puts values.flatten.last

puts 'E = 10^-4; S:'
values = func(0.0001, x).take_while { |ac, b, a| ((ac < b) && a.positive?) }
puts values.flatten.last
