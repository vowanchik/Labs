# frozen_string_literal: true

def func(accuracy, rad)
  a = rad
  b = 100
  n = 6
  real_p = 2 * Math::PI * rad
  Enumerator.new do |y|
    loop do
      c = n * a
      y.yield accuracy, b, a, c
      a = Math.sqrt(2 * rad**2 - rad * Math.sqrt(4 * rad * rad - a**2))
      n *= 2
      b = (c - real_p).abs
    end
  end
end
