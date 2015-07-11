
Entonces(/^cerramos el programa$/) do
  @interactive.stdin.close()
end

Entonces(/^se le muestra el mensaje$/) do |message|
  assert_passing_with message
end

Dado(/^el usuario escribe un (\d+)$/) do |number|
  type number
  expect(number.to_i.to_s).to eq number.to_s
end

Cuando(/^el usuario escribe un "([^"]*)"$/) do |string|
  type string
end

Dado(/^el usuario escribe un (-\d+)$/) do |number|
  type number
end