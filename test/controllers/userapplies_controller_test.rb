require "test_helper"

class UserappliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userapplied = userapplies(:one)
  end

  test "should get index" do
    get userapplies_url
    assert_response :success
  end

  test "should get new" do
    get new_userapply_url
    assert_response :success
  end

  test "should create userapply" do
    assert_difference("Userapply.count") do
      post userapplies_url, params: { userapplied: { cv: @userapplied.cv, email: @userapplied.email, name: @userapplied.name } }
    end

    assert_redirected_to userapply_url(Userapply.last)
  end

  test "should show userapply" do
    get userapply_url(@userapplied)
    assert_response :success
  end

  test "should get edit" do
    get edit_userapply_url(@userapplied)
    assert_response :success
  end

  test "should update userapply" do
    patch userapply_url(@userapplied), params: { userapplied: { cv: @userapplied.cv, email: @userapplied.email, name: @userapplied.name } }
    assert_redirected_to userapply_url(@userapplied)
  end

  test "should destroy userapply" do
    assert_difference("Userapply.count", -1) do
      delete userapply_url(@userapplied)
    end

    assert_redirected_to userapplies_url
  end
end
