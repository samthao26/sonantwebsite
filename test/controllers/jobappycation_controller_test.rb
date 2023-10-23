require "test_helper"

class JobappycationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobappycation_index_url
    assert_response :success
  end
end
