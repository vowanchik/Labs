# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'func.rb'

# This is class
class Test < MiniTest::Unit::TestCase
  def test_1
    acc = 0.001
    res = func(acc, 5).take_while do |ac, b, a|
      (ac < b) && a.positive?
    end.flatten.last
    assert_in_delta(2 * Math::PI * 5, res, acc)
  end
end
