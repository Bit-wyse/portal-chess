require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    check "Active" if @user.active
    fill_in "Authentication token", with: @user.authentication_token
    check "Confirmed" if @user.confirmed
    fill_in "Crypted password", with: @user.crypted_password
    fill_in "Current login at", with: @user.current_login_at
    fill_in "Current login ip", with: @user.current_login_ip
    fill_in "Email", with: @user.email
    fill_in "Failed login count", with: @user.failed_login_count
    fill_in "Last login at", with: @user.last_login_at
    fill_in "Last login ip", with: @user.last_login_ip
    fill_in "Last request at", with: @user.last_request_at
    fill_in "Login count", with: @user.login_count
    fill_in "Password salt", with: @user.password_salt
    fill_in "Perishable token", with: @user.perishable_token
    fill_in "Persistence token", with: @user.persistence_token
    fill_in "Single access token", with: @user.single_access_token
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    check "Active" if @user.active
    fill_in "Authentication token", with: @user.authentication_token
    check "Confirmed" if @user.confirmed
    fill_in "Crypted password", with: @user.crypted_password
    fill_in "Current login at", with: @user.current_login_at
    fill_in "Current login ip", with: @user.current_login_ip
    fill_in "Email", with: @user.email
    fill_in "Failed login count", with: @user.failed_login_count
    fill_in "Last login at", with: @user.last_login_at
    fill_in "Last login ip", with: @user.last_login_ip
    fill_in "Last request at", with: @user.last_request_at
    fill_in "Login count", with: @user.login_count
    fill_in "Password salt", with: @user.password_salt
    fill_in "Perishable token", with: @user.perishable_token
    fill_in "Persistence token", with: @user.persistence_token
    fill_in "Single access token", with: @user.single_access_token
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
