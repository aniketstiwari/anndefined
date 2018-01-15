require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get about_us" do
    get homes_about_us_url
    assert_response :success
  end

  test "should get faq" do
    get homes_faq_url
    assert_response :success
  end

  test "should get terms_and_conditions" do
    get homes_terms_and_conditions_url
    assert_response :success
  end

end
