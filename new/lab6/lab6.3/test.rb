# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'func.rb'

# This is class
class PartThreeTest < MiniTest::Test
  def setup
    @acc = 0.001
    @n_val = 1000
  end

  def test_block
    res = intg(@n_val, 0.1, 1) { |x| Math.sin(x) / x }
    assert_in_delta(0.8462, res, @acc)
  end

  def test_lambda
    res = intg(@n_val, 1, 2) { |x| Math.tan(x + 1) / (x + 1) }
    assert_in_delta(-0.37687, res, @acc)
  end
end
