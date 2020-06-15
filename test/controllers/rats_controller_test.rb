require 'test_helper'

class RatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rats_index_url
    assert_response :success
  end

end
