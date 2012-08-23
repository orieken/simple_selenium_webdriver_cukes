Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  @driver.quit
end

Given /^I am on the Bing Home Page$/ do
  @driver.navigate.to "http://www.bing.com"
end

When /^I search for "(.*?)"$/ do |thing_i_want_to_search_for|
  @driver.find_element(:id => "sb_form_q").send_keys thing_i_want_to_search_for
  @driver.find_element(:id => "sb_form_go").click
end

When /^I follow the "(.*?)" link$/ do |the_link_i_want_to_click|
  @driver.find_element(:link_text => the_link_i_want_to_click).click
end

Then /^I should see the title "(.*?)"$/ do |omg_the_title_is_free|
  #it should be something more meaningful like expected_title but it is
  #free for us not a whole lot of code in this step
  @driver.title.should eql(omg_the_title_is_free)
end

Then /^I should not see the title "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I perform a search for "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see results for "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end