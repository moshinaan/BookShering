require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get n" do
    get sessions_n_url
    assert_response :success
  end

end
