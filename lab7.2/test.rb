require_relative 'func.rb'
require 'minitest/autorun'

class Test < Minitest::Test
	def test_inharited
		assert(Obj1.class == Obj2.class.superclass)
	end
end