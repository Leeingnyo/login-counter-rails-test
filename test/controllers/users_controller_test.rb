require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "#signup_failure_user" do
    post :signup, {'username' => 'test', 'password' => 'testpass'}
    json = JSON.parse(response.body)
    assert json['error_code'] == -1
  end
end
