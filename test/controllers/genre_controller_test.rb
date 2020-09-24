require 'test_helper'

class GenreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genre_index_url
    assert_response :success
  end

  test "should get new" do
    get genre_new_url
    assert_response :success
  end

  test "should get show" do
    get genre_show_url
    assert_response :success
  end

  test "should get edit" do
    get genre_edit_url
    assert_response :success
  end

  test "should get create" do
    get genre_create_url
    assert_response :success
  end

  test "should get update" do
    get genre_update_url
    assert_response :success
  end

  test "should get destroy" do
    get genre_destroy_url
    assert_response :success
  end

end
