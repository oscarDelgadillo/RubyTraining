class Login_page
  include Capybara::DSL
  attr_reader :username_textbox, :password_textbox

  def initialize
    # @username_textbox = page.find_by_id('username')
    # @username_textbox = page.find(:xpath, ".//input[@id='username']")
    # @password_textbox = page.find_by_id('password')
    # @button_login = page.find_by_id('Login')
  end

  def open_login_page
    return visit(Capybara.app_host)
  end

  def insert_credentials(username, password)
    # page.fill_in "username", :with => username
    find(:xpath, ".//input[@id='username']").set(username)
    page.fill_in "pw", :with => password
    page.find_by_id('Login').click
    return home_page = Home_page.new
  end

end