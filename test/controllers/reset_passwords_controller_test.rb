require 'test_helper'

class ResetPasswordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reset_passwords_new_url
    assert_response :success
  end

end
