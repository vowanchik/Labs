# frozen_string_literal: true

require_relative 'func.rb'
require 'minitest/autorun'

# Test class
class Test < Minitest::Test
  def test_inharited
    assert(Obj1.class == Obj2.class.superclass)
  end
end
