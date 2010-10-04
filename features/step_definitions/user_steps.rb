Given /^a valid user "([^"]*)" with password "([^"]*)"$/ do |email, password|
  create_valid_user(email, password)
end

def create_valid_user(email, password)
  @user = User.create!({
    :email    => email,
    :password => password
  })
  @user.confirm!
end