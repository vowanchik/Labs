# frozen_string_literal: true

require 'minitest/autorun'

# Test class
class Test < Minitest::Test
  def setup
    @file_f = File.open('F.txt')
    @file_g = File.open('G.txt')
  end

  def teardown
    @file_f.close
    @file_g.close
  end

  def test_exist
    assert(File.exist?('F.txt'))
    assert(File.exist?('G.txt'))
  end

  def test_result_file
    expect = @file_f.readlines.map(&:chomp).map { |s| ' ' << s }
    result = @file_g.readlines.map(&:chomp)
    assert_equal(expect, result)
  end
end
