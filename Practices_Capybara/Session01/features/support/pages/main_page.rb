class Main_page
  include Capybara::DSL

  def initialize

  end

  def is_open
    # return find(:xpath, (".//img[@class='involvemenu']")).exist

    if find(:xpath, ".//img[@class='involvemenu']")
      return true
    end
    return false
  end


  def create_computer(computer)
    find(:xpath, ".//*[@title='Create Technology Objects']/div").click
    within_frame(find(:xpath, "//iframe[@id='j_id0:SiteTemplate:j_id13:newObjectWizard:popup_iframeContainer']")) do
      find(:xpath, "//select[contains(@id,'pickTypeSection')]/option[@value='Computer__c']").click
      find(:xpath, ".//div[@class='requiredInput']/input").set(computer['Name'])
      find(:xpath, ".//textarea[@type='text']").set(computer['Description'])
      find(:xpath, ".//span[@id='createNewObjectSplitButton-btnIconEl']").click
      find(:xpath, ".//a[text()='#{computer['Name']}']").click
      # @cpu_name = computer['Name']
      return cpu = Computer.new(computer['Name'], computer['Description'])

    end
  end
end