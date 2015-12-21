require 'test_helper'

class SignupUsersTest < ActionDispatch::IntegrationTest
  test 'sign signup form and signup user' do
    get signup_path 
    assert_template "users/new"
    assert_difference 'User.count',1 do
      post_via_redirect users_path, user: {username: "Teras", email: "Apsuxo@teras.gr", password:"teras"}
    end
    assert_template "users/show"
    assert_match "Teras",response.body
  end
end
