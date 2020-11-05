class Enter_Data_Vehicle < SitePrism::Page

  set_url'/101/app.php'

  element :cboMake, '#make'
  element :cboModel, '#model'
  element :txtCylindercapacity, '#cylindercapacity'
  element :txtEngineperformance, '#engineperformance'
  element :txtDateofmanufacture, '#dateofmanufacture'
  element :cboNumberofseats, '#numberofseats'
  element :radRighthanddriveyes, '#insurance-form > div > section:nth-child(1) > div:nth-child(7) > p > label:nth-child(1) > span'
  element :radRighthanddriveno, '#righthanddriveno'
  element :cboNumberofseatsmotorcycle, "#numberofseatsmotorcycle"
  element :cboFuel, '#fuel'
  element :txtPayload, '#payload'
  element :txtTotalweight, '#totalweight'
  element :txtListprice, '#listprice'
  element :txtLicenseplatenumber, '#licenseplatenumber'
  element :txtAnnualmileage, '#annualmileage'
  element :btnNext,  '#nextenterinsurantdata'

  def validar_campos
    expect(page).to have
  end


end