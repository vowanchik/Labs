require 'test_helper'

class FetcherControllerTest < ActionDispatch::IntegrationTest
   test "should get main page" do
     get '/'
     assert_response :success
   end
end
