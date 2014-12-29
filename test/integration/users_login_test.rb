require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  
  test "login with invalid information" do
    get login_path                    # Visit login path
    assert_template 'sessions/new'    # Verify that the new sessions form renders properly
    post login_path, session: { email: "", password: "" }   # Post to the sessions path invalid params
    assert_template 'sessions/new'    # Verify that the new sessions form gets re-rendered
    assert_not flash.empty?           # Verify that the flash message appears
    get root_path                     # Visit another page (home)
    assert flash.empty?           #Verify that the flash does not appear on the next page
  end
  
end
