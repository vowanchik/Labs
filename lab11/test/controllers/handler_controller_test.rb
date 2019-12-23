require 'test_helper'

class HandlerControllerTest < ActionDispatch::IntegrationTest
  test "different output with different input" do
    10.times {
       h = HandlerController.new
      assert(h.create_json(Array(1..10).map{|i| rand(100)}.join(' ')) != h.create_json(Array(1..10).map{|i| rand(100)}.join(' ')))
    }
  end
end
