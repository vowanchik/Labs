# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'func.rb'

# Test class
class Test < MiniTest::Unit::TestCase
  def test_1
    accuracy = 1.0 / rand(10_000)
    res = func(accuracy, 5)
    assert_in_delta(2 * Math::PI * 5, res)
  end
end
