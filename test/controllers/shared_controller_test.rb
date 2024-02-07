require "test_helper"

class SharedControllerTest < ActionDispatch::IntegrationTest
  test "should get _header" do
    get shared__header_url
    assert_response :success
  end
end
