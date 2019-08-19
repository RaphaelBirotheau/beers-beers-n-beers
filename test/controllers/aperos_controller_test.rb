require 'test_helper'

class AperosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aperos_index_url
    assert_response :success
  end

  test "should get show" do
    get aperos_show_url
    assert_response :success
  end

  test "should get new" do
    get aperos_new_url
    assert_response :success
  end

  test "should get create" do
    get aperos_create_url
    assert_response :success
  end

  test "should get edit" do
    get aperos_edit_url
    assert_response :success
  end

  test "should get update" do
    get aperos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get aperos_destroy_url
    assert_response :success
  end

end
