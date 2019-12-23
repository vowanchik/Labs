require 'test_helper'

class ContControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get '/'
    assert_response :success
  end

  test "should get answer" do
    get '/answer?arr=1'
    assert_response :success
  end

end
