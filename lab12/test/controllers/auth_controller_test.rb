require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/'
    assert_response :success
  end

  test "should get signout" do
    get '/signout'
    assert_response :redirect
  end

end
