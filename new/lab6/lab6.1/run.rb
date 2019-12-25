# frozen_string_literal: true

require_relative 'func.rb'
puts 'Введите радиус окружности: '
x = gets.to_i
puts 'E = 10^-3; S:'

puts func(0.001, x)

puts 'E = 10^-4; S:'
puts func(0.0001, x)
