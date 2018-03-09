class Login
  include Capybara::DSL
  attr_reader :username_textbox, :password_textbox

  def initialize
    @username_textbox = page.find_by_id('identifierId')
    @button_next = page.find_by_id('identifierNext')
    @password_textbox = page.find(:xpath, "//input[@name='password']")
  end

  def insert_username(username)
    page.fill_in @username_textbox, :with => username
    @button_next.click
  end

end