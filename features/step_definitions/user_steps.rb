Given /^a valid user "([^"]*)" with password "([^"]*)"$/ do |email, password|
  create_valid_user(email, password)
end

Given /^an authenticated user "([^"]*)" with password "([^"]*)"$/ do |email, password|
  create_valid_user(email, password)
  
  When %{I am on the login page}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "#{password}"}
  And %{I press "Sign in"}
end


Given /^a valid api token "([^"]*)"$/ do |key|
  @user.authentication_token = key
  @user.save!
end

def create_valid_user(email, password)
  @user = User.create!({
    :email    => email,
    :password => password
  })
  @user.confirm!
end