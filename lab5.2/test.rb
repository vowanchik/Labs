# frozen_string_literal: true

require 'minitest/autorun'

require_relative 'func.rb'
# Testing
class Test < Minitest::Test
  def test_string
    assert_equal [['Владимир Дмитриевич Рожнов', 'Ирина Владимировна Рюмина'], ['Рожнов В. Д.', 'Рюмина И. В.']], format_end(['Рожнов Владимир Дмитриевич', 'Рюмина Ирина Владимировна'])
  end
end
