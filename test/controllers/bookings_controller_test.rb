require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get booktour" do
    get bookings_booktour_url
    assert_response :success
  end
end
