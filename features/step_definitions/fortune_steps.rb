Given /^a fortune saying "([^"]*)"$/ do |fortune|
  Fortune.create! :text => fortune
end