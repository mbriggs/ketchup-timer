Then /^I should see a (.*) called "([^"]*)"$/ do |tag, text|
  page.should have_css(tag, text: text)
end

Then /^I should see the (.*)$/ do |object|
  page.should have_css(selector_for(object))
end

Then /^I should see the (.*) with a label of "(.*)"$/ do |object, label|
  page.should have_css(selector_for(object), text: label)
end

Then /^the (.*) should be disabled$/ do |object|
  page.find(selector_for object)[:disabled].should == 'disabled'
end

Then /^the (.*) should not be disabled$/ do |object|
  page.find(selector_for object)[:disabled].should be_nil
end
