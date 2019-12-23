require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get '/users'
    assert_response :success
  end

  test "should get new" do
    get '/users/new'
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post '/users', params: { user: { password: rand(1000).to_s, username: rand(100000).to_s } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

end
