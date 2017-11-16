require 'test_helper'

class ClientHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_home_index_url
    assert_response :success
  end

end
