require 'test_helper'

class ActualsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actuals_index_url
    assert_response :success
  end

  test "should get show" do
    get actuals_show_url
    assert_response :success
  end

  test "should get edit" do
    get actuals_edit_url
    assert_response :success
  end

  test "should get new" do
    get actuals_new_url
    assert_response :success
  end

  test "should get delete" do
    get actuals_delete_url
    assert_response :success
  end

end
