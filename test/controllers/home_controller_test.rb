require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Module Selection'
    assert_select 'h1', 'Contact Us!'
    assert_select 'p', 'Complete the following for to get in touch with us.'
  end

end
