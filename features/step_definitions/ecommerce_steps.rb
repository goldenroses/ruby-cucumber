Given(/^Ecommerce webpage Login Page loads$/) do
  $browser.goto "https://ecommerce-playground.lambdatest.io/index.php?route=account/login"
  $user_session = LoginPage.new
end

Then(/^Ecommerce Login Link is present loaded$/) do
  assert($user_session.username_textbox.name, "email")
  assert($user_session.password_textbox.name, "password")
end

Then(/^Correct Username and Password Should Login Successfully (.*) (.*)$/) do |username, password|
  puts "------"
  puts username
  $user_session.username_textbox.send_keys(username)
  sleep(3)
  $user_session.password_textbox.send_keys(password)
  sleep(3)
  $user_session.login_button.click
end

And(/^My Account page should display after login$/) do
  assert($user_session.account_header.name, "My Account")
end
