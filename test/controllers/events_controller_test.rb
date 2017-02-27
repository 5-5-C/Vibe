require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get New" do
    get events_New_url
    assert_response :success
  end

  test "should get Create" do
    get events_Create_url
    assert_response :success
  end

  test "should get Show" do
    get events_Show_url
    assert_response :success
  end

  test "should get Edit" do
    get events_Edit_url
    assert_response :success
  end

  test "should get Destroy" do
    get events_Destroy_url
    assert_response :success
  end

end
