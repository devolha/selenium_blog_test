class SignupPage 

# css selectors
USERNAME_FIELD
EMAIL_FIELD
PASSWORD_FIELD
SUBMIT_BUTTON

attr_reader :driver

# class method

def initialize(driver)
  @driver = driver
end

def enter_username(username)
	username_field = @driver.find_element(id: 'user_username')
  	username_field.send_keys(username)
end

def enter_email(email)
	email_field = @driver.find_element(id: 'user_email')
  	email_field.send_keys(email)
end

def enter_password(password)
	password_field = @driver.find_element(id: 'user_password')
  	password_field.send_keys(password)
end

def submit_form()
	sign_up_button = @driver.find_element(id: 'submit')
  	sign_up_button.click
end

end