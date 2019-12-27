require "minitest/autorun"

require_relative "func.rb"

class Test < Minitest::Test


  def test_string
        assert_equal ["Рожнов В.Д.\n", "Рюмина И.В.\n"], stroki(["Владимир Дмитриевич Рожнов\n", "Ирина Владимировна Рюмина\n"])
  end
 end