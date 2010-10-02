Given /^a fortune saying "([^"]*)"$/ do |text|
  create_fortune(text)
end

Given /^a list of fortunes$/ do
  (1..3).each { |i| create_fortune("fortune #{i}") }
  
  @fortunes = Fortune.all
end

Then /^I should see a random fortune$/ do
  text    = page.find_by_id('fortune').text.strip
  fortune = Fortune.find_by_text(text)
  
  @fortunes.should include(fortune)
end


def create_fortune(text)
  Fortune.create! :text => text
end