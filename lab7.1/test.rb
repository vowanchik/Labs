require 'minitest/autorun'

class Test < Minitest::Test

	def test_exist
		assert(File.exist?('F.txt'))
		assert(File.exist?('G.txt'))
	end

end