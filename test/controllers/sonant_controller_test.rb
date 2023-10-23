require "test_helper"

class SonantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sonant_index_url
    assert_response :success
  end
end
