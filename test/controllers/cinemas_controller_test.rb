require 'test_helper'

class CinemasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cinemas_index_url
    assert_response :success
  end

  test "should get new" do
    get cinemas_new_url
    assert_response :success
  end

  test "should get create" do
    get cinemas_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cinemas_destroy_url
    assert_response :success
  end

end
