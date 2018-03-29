#@Cadastrar

Dado(/^Que já esteja logado ORANGEHRM website$/) do
  visit ("http://opensource.demo.orangehrmlive.com/")
  find(:xpath, '//*[@id="txtUsername"]')
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  find(:xpath, '//*[@id="btnLogin"]').click
end

Quando(/^já acessado a funcionalidade de cadastro$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
end

Quando(/^salvo o formulário com os dados preenchidos$/) do
  fill_in('firstName', :with => 'Pedro')
  fill_in('lastName', :with => 'Silva')
  check('chkLogin')
  fill_in('user_password', :with => 'inmetrics@123')
  fill_in('user_name', :with => Faker::Name.name)
  fill_in('user_password', :with => 'inmetrics@123')
  fill_in('re_password', :with => 'inmetrics@123')
  select('Disabled', :from => 'status')
  find(:xpath, '//*[@id="btnSave"]').click
end

Então(/^eu terei o cadastro de um novo empregado$/) do
  has_link?('href="/index.php/pim/viewPersonalDetails/empNumber/0046"')
end

#@Editar

Dado(/^Que já esteja logado no ORANGEHRM website e acessado a funcionalidade de cadastro$/) do
visit ("http://opensource.demo.orangehrmlive.com/")
  find(:xpath, '//*[@id="txtUsername"]')
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  find(:xpath, '//*[@id="btnLogin"]').click
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
end

Quando(/^já salvo o formulário com os dados preenchidos$/) do
  fill_in('firstName', :with => 'Pedro')
  fill_in('lastName', :with => 'Silva')
  check('chkLogin')
  fill_in('user_name', :with => Faker::Name.name)
  fill_in('user_password', :with => 'inmetrics@123')
  fill_in('re_password', :with => 'inmetrics@123')
  select('Disabled', :from => 'status')
  find(:xpath, '//*[@id="btnSave"]').click
end

Quando(/^a edição do empregado realizada$/) do
find(:xpath, '//*[@id="btnSave"]').click
fill_in('personal[txtEmpMiddleName]', :with => 'Barros')
find(:xpath,'//*[@id="personal_optGender_1"]').click
fill_in('personal[txtLicenNo]', :with => '54426367')
select('Brazilian', :from =>'personal[cmbNation]')
select('Single', :from => 'personal[cmbMarital]')
fill_in('personal[DOB]', :with => '1990-10-01')
fill_in('personal[txtLicExpDate]', :with => '2020-10-15')
find(:xpath,'//*[@id="btnSave"]').click
end

Então(/^o empregado será editado$/) do
assert_text('Successfully Saved')
end

  #@pesquisar

Quando(/^selecionar a funcionalidade Employee List$/) do
  visit ("http://opensource.demo.orangehrmlive.com/")
  find(:xpath, '//*[@id="txtUsername"]')
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  find(:xpath, '//*[@id="btnLogin"]').click
end

Quando(/^selecionar a funcionalidade Employee List e esquisar um funionário cadastrado$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_viewEmployeeList').click
  fill_in('empsearch_employee_name_empName', :with => 'Linda Anderson')
  fill_in('empsearch_id', :with => '0001')
  find(:id, 'searchBtn').click
  sleep 5
end

Então(/^validar a pesquisa$/) do
assert_text('HR Manager')
sleep 1
end
