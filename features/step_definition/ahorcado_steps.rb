Given /^Estoy en la pagina principal$/ do
  visit "/"
end

When /^Juego con la palabra "(.*?)"$/ do |value|
 fill_in("palabra", :with => value)
 click_button("iniciar")
end

Then /^veo "(.*?)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When /^Ingreso "(.*?)" y es "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^Aprieto boton "(.*?)"$/ do |name|
  click_button(name)
end

Given /^Estoy en el login$/ do
  visit "/login"
end

When /^lleno campo "(.*?)" con "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^hago click en "(.*?)"$/ do |name|
  click_button(name)
end



