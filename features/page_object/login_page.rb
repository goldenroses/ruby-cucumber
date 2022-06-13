class LoginPage
  def username_link
    $browser.link(text: "Forgotten Password")
  end

  def username_textbox
    $browser.input(id: "input-email")
  end

  def password_textbox
    $browser.input(id: "input-password")
  end

  def login_button
    $browser.button(value: "Login")
  end

  def account_header
    $browser.link(text: "Edit Account")
  end
end
