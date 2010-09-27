Given /^a fortune saying "([^"]*)"$/ do |fortune|
  @fortune = Fortune.create! :text => fortune
end