# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get signup' do
    get users_signup_url
    assert_response :success
  end
end
