require 'test_helper'

class AuthTest < ActionDispatch::IntegrationTest
test 'creating a user' do
username = rand(10000000).to_s
get '/users/new',
params:{
user: {
username: username,
pwd: 1.to_s,
name: 'a',
age: 1
}
}
assert_response :ok
get '/calculations',
params: {
n: rand(100000)
}
assert_response :redirect
end

test 'reaching count with auth only' do
get '/signout'
get '/calculations'
assert_response :redirect
end
end
