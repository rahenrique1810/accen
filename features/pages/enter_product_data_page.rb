class Enter_Product < SitePrism::Page

  element :txtStartdate, '#startdate'
  element :cboInsurancesum, '#insurancesum'
  element :cboMeritrating, '#meritrating'
  element :cbodaMageinsurance, '#damageinsurance'
  element :radEuro, '#insurance-form > div > section:nth-child(3) > div.field.idealforms-field.idealforms-field-checkbox.invalid > p > label:nth-child(1) > span'
  element :cboCourtesycar, '#courtesycar'
  element :btnNext, '#nextselectpriceoption'
end