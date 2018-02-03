require 'test_helper'

class CheckoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get shipping" do
    get checkouts_shipping_url
    assert_response :success
  end

end
