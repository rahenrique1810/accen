class Send_Quote < SitePrism::Page
  element :txtEmail, '#email'
  element :txtPhone, '#phone'
  element :txtUsername, '#username'
  element :txtPassword, '#password'
  element :txtConfirmpassword, '#confirmpassword'
  element :txtComments, '#Comments'
  element :btnSendemail, '#sendemail'
end