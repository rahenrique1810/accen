Dado('estou na aba Enter Vehicle Data') do
  @enter_vehicle = enter_vehicle
  @enter_vehicle.load
end

Quando('preencher todos os campos com as informações do veículo que deverá ser feito a cotação') do
  @enter_vehicle.cboMake.select 'Toyota'
  @enter_vehicle.cboModel.select 'Moped'

  cilindradas = rand(100...500)
  @enter_vehicle.txtCylindercapacity.set cilindradas

  kw = rand(10...20)
  @enter_vehicle.txtEngineperformance.set kw

  @today = DateTime.now
  @today = @today.strftime('%m/%d/%Y')
  @enter_vehicle.txtDateofmanufacture.set @today

  @enter_vehicle.cboNumberofseats.select '2'

  @enter_vehicle.radRighthanddriveyes.click

  @enter_vehicle.cboNumberofseatsmotorcycle.select '2'
  @enter_vehicle.cboFuel.select 'Gas'

  payload = rand(100...200)
  @enter_vehicle.txtPayload.set payload

  totalWeight = rand(200...300)
  @enter_vehicle.txtTotalweight.set totalWeight

  listPrice = rand(5000...10000)
  @enter_vehicle.txtListprice.set listPrice

  licensePlate = rand(1000000...9999999)
  @enter_vehicle.txtLicenseplatenumber.set licensePlate

  annualMillage = rand(8000...12000)
  @enter_vehicle.txtAnnualmileage.set annualMillage

end

Quando('clicar no botão next') do
  @enter_vehicle.btnNext.click
end

Então('deverá avançar para aba Enter Insurant Data') do
  enterInsurant = find(:xpath, '/html/body/div[1]/div/div[1]/div/div/nav/ul/li[2]/a/span')
  expect(enterInsurant.text).to eql '7'
end


Dado('estou na aba Enter Insurant Data') do
  enterInsurant = find(:xpath, '/html/body/div[1]/div/div[1]/div/div/nav/ul/li[2]/a/span')
  expect(enterInsurant.text).to eql '7'
  @enter_insurant = enter_insurant
end

Quando('preencher todos os campos com as informações do segurado para cotação do seguro') do
  firstName = Faker::Name.first_name
  @enter_insurant.txtFirstName.set firstName

  lastName = Faker::Name.last_name
  @enter_insurant.txtLastName.set lastName

  dateBirthday = (Faker::Date.birthday(min_age: 18, max_age: 70)).to_datetime
  dateBirthday = dateBirthday.strftime('%m/%d/%Y')
  @enter_insurant.txtBirthdate.set dateBirthday

  @enter_insurant.radMale.click

  streetAdress = Faker::Address.street_address
  @enter_insurant.txtStreetaddress.set streetAdress

  @enter_insurant.cboCountry.select 'Brazil'

  zipCode = rand(10000...99999)
  @enter_insurant.txtZipcode.set zipCode

  city = Faker::Address.city
  @enter_insurant.txtCity.set city

  @enter_insurant.cboOccupation.select 'Employee'

  find(:xpath, '/html/body/div[1]/div/div[1]/div/div/form/div/section[2]/div[10]/p/label[3]/span').click
  @enter_insurant.radSkydiving.click
  @enter_insurant.radOther.click

  webSite = 'www.google.com'
  @enter_insurant.txtWebsite.set webSite

  caminho = 'teste.jpg'
  @enter_insurant.btnOpenImage.set(caminho)

end

Quando('clicar no botão next para avançar para próxima etapa') do
  @enter_insurant.btnNext.click
end

Então('deverá avançar para aba Enter Product Data') do
  enterProduct = find(:xpath, '/html/body/div[1]/div/div[1]/div/div/nav/ul/li[3]/a/span')
  expect(enterProduct.text).to eql '6'
end

Dado('estou na aba Enter Product Data') do
  @enter_product = enter_product
end

Quando('preencher todos os campos com as informações do produto que deverá ser feito a cotação') do

  @today = Date.today + 45
  @today = @today.strftime('%m/%d/%Y')
  @enter_product.txtStartdate.set @today
  @enter_product.cboInsurancesum.select '10.000.000,00'
  @enter_product.cboMeritrating.select 'Bonus 8'
  @enter_product.cbodaMageinsurance.select 'Partial Coverage'
  find(:xpath, '/html/body/div[1]/div/div[1]/div/div/form/div/section[3]/div[5]/p/label[1]/span').click
  @enter_product.cboCourtesycar.select 'Yes'

end

Quando('clicar no botão next para avançar para aba Select Option Price') do
  @enter_product.btnNext.click
end

Então('deverá avançar para aba Select Option Price') do
  expect(page).to have_text 'Silver'

end


Dado('preenchi todos os formulários anteriores') do
  expect(page).to have_text 'Gold'
end

Dado('estou na aba de Select Option Price') do
  expect(page).to have_text 'Gold'
end

Quando('selecionar um plano de seguro') do
  find('#priceTable > tfoot > tr > th.group > label:nth-child(2) > span').click
end

Quando('clicar no botão next para avançar para a ultima aba') do
  find('#nextsendquote').click
end

Então('deverá avançar para aba Send Quote') do
  expect(page).to have_text 'Send'
end

Dado('estou na página de envio de contação') do
  expect(page).to have_text 'Send'
  @send_quote = send_quote
end

Quando('preencher o formulário com as informações cadastrais') do
  email = 'robson1810@hotmail.com'
  @send_quote.txtEmail.set email

  phone = '1999999999'
  @send_quote.txtPhone.set phone

  username = 'robson5540'
  @send_quote.txtUsername.set username

  password = 'Admin@123'
  @send_quote.txtPassword.set password

  @send_quote.txtConfirmpassword.set password

  @send_quote.txtComments.set 'Obrigado desde já!'

end

Quando('clicar no botão Send') do
  @send_quote.btnSendemail.click
end

Então('aparecerá a mensagem {string}') do |mensagem|
  expect(page).to have_text mensagem
end