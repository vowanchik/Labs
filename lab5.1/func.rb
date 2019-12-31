# frozen_string_literal: true

def calc(x)
  Math.sqrt(Math.sin(x**2 + x**2).abs**3 / ((x**3 + x**2 - x)**2 + Math::PI))
end
