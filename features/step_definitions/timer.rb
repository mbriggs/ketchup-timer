When /^I click on the (.*)$/ do |object|
  id = id_for object
  pp page

  if object =~ /button/
    click_button id
  else
    click_link id
  end
end
