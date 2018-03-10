# begin
#   require 'rspec/expectations';
# rescue LoadError;
#   require 'spec/expectations';
# end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'pathname'
require 'yaml'

def find_config_file(filename)
  root = Pathname.pwd
  while not root.root?
    root.find do |path|
      if path.file? and path.basename.to_s == filename
        return path.to_s
      end
    end
    root = root.parent
  end
  raise 'Configuration file ' #{filename}' not found!'
end

def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)
  return config
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

AfterConfiguration do
  # Load global configuration parameters
  configuration = load_app_config_file('config.yml')
  # configure capybara
  config_capybara = configuration['capybara']['default']
  default_host = "#{config_capybara['host']}"
  default_wait = config_capybara['wait_time'].to_i
  $default_user = "#{config_capybara['user']}"
  $default_password = "#{config_capybara['password']}"
  drivers = config_capybara['drivers']

  Capybara.configure do |config|
    Capybara.default_driver = :selenium
    Capybara.run_server = false
    Capybara.app_host = default_host
    Capybara.default_max_wait_time = default_wait
  end
end
