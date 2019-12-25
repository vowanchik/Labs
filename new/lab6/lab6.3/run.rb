# frozen_string_literal: true

require_relative 'func.rb'

puts 'Введите количество отрезок разбиения'
n_val = gets.to_i
puts 'sin(x) / x:'
puts intg(n_val, 0.1, 1) { |x| Math.sin(x) / x }

expr = ->(x) { Math.tan(x + 1) / (x + 1) }
puts 'tan(x + 1) / (x + 1)'
puts intg(n_val, 1, 2, expr)
