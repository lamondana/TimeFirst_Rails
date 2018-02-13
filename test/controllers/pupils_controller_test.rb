require 'test_helper'

class PupilsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pupils_index_url
    assert_response :success
  end

  test "should get show" do
    get pupils_show_url
    assert_response :success
  end

  test "should get new" do
    get pupils_new_url
    assert_response :success
  end

  test "should get edit" do
    get pupils_edit_url
    assert_response :success
  end

  test "should get delete" do
    get pupils_delete_url
    assert_response :success
  end

end
