require 'test_helper'

class CardlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cardlists_new_url
    assert_response :success
  end

  test "should get index" do
    get cardlists_index_url
    assert_response :success
  end

  test "should get show" do
    get cardlists_show_url
    assert_response :success
  end

  test "should get edit" do
    get cardlists_edit_url
    assert_response :success
  end

end
