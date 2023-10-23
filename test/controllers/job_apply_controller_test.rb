require "test_helper"

class JobApplyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_apply_new_url
    assert_response :success
  end
end
