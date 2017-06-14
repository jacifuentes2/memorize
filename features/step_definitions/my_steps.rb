Given(/^Visitar pagina$/) do
  visit "/"
end

When(/^Selecciona Boton "([^"]*)"$/) do |name|
  click_button(name)
end

Then(/^Debe mostrar el valor "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/
end
