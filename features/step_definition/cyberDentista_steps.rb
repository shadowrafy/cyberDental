Given(/^Estoy en la pagina de registro de dentistas$/) do
  visit '/dentistas/RegistroDentistas'
end

When(/^Lleno el campo "(.*?)" con "(.*?)"$/) do |campo, value|
  fill_in(campo, :with => value)
end

When(/^Hago click en "(.*?)"$/) do |value|
  click_button(value)
end

Then /^veo "(.*?)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end



