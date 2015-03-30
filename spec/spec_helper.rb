require 'chefspec'
require 'serverspec'
require 'simplecov'
require 'net/ssh'
require 'tempfile'

# Simplecov
SimpleCov.start

# ServerSpec configuration
set :backend, :ssh
host = 'default'
`vagrant up #{host}`
ssh_config = Tempfile.new('', Dir.tmpdir)
ssh_config.write(`vagrant ssh-config #{host}`)
ssh_config.close
options = Net::SSH::Config.for(host, [ssh_config.path])
options[:user] ||= Etc.getlogin
set :host,        options[:host_name] || host
set :ssh_options, options

# Rspec configuration
RSpec.configure do |config|
  config.cookbook_path = 'cookbooks' # chefspec
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
