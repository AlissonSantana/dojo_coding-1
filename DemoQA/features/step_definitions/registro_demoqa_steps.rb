Dado(/^que eu esteja na pagina de registro$/) do
  visit ("http://demoqa.com/")
  find(:xpath, '//*[@id="menu-item-374"]/a').click
end

Quando(/^o formulário preenchdo é enviado com os dados$/) do
  fill_in('first_name', :with => 'Renato')
  fill_in('last_name', :with => 'Silva')
  find('input[value="married"]').click
  find('input[value="reading"]').click
  select('Algeria', :from => 'dropdown_7')
  find(:xpath, '//*[@id="phone_9"]').set('11998889087')
  fill_in('username', :with => 'Renato Silva Santos')
  fill_in('email_1', :with => 'rsilvasantos@email.com')
  fill_in('password_2', :with => 'senha@123')
  fill_in('confirm_password_password_2', :with => 'senha@123')
  find('input[type="submit"]').click
end

Então(/^é exibida a mensagem de sucesso$/) do
  expect(find('.piereg_message').text).to eq('Thank you for your registration')
end
