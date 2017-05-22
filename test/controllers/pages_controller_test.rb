require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get staff_picks" do
    get pages_staff_picks_url
    assert_response :success
  end

  test "should get near_me" do
    get pages_near_me_url
    assert_response :success
  end

end
