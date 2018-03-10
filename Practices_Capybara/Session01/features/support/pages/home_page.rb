class Home_page
  include Capybara::DSL

  def initialize

  end

  def is_open
    return find(:xpath, (".//*[@id='home_Tab']/a")).text == "Home"
  end

  def go_to_main_app
    find(:xpath, (".//li[@id='01rg0000000DM61_Tab']/a")).click
    return Main_page.new
  end
end