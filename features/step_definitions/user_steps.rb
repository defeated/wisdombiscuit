Given /^a valid user "([^"]*)" with password "([^"]*)"$/ do |email, password|
  create_valid_user(email, password)
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