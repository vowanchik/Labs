# frozen_string_literal: true

require_relative 'func.rb'

puts 'Введите строки (Ctrl+D для остановки)'
arr = STDIN.map(&:chomp)

puts "Исходная последовательность: #{arr}"
puts "Измененная последовательность: #{format_end(arr)}"
