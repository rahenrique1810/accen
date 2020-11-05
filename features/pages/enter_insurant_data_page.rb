class Enter_Insurante < SitePrism::Page

  element :txtFirstName, '#firstname'
  element :txtLastName, '#lastname'
  element :txtBirthdate, '#birthdate'
  element :radMale, '#insurance-form > div > section:nth-child(2) > div:nth-child(4) > p > label:nth-child(1) > span'
  element :txtStreetaddress, '#streetaddress'
  element :cboCountry, '#country'
  element :txtZipcode, '#zipcode'
  element :txtCity, '#city'
  element :cboOccupation, '#occupation'
  element :radCliffDiving, '#cliffdiving'
  element :radSkydiving, '#insurance-form > div > section:nth-child(2) > div.field.idealforms-field.idealforms-field-checkbox.valid > p > label:nth-child(4) > span'
  element :radOther, '#insurance-form > div > section:nth-child(2) > div.field.idealforms-field.idealforms-field-checkbox.valid > p > label:nth-child(5) > span'
  element :txtWebsite, '#website'
  element :btnOpenImage, '#picture'
  element :btnNext, '#nextenterproductdata'
end