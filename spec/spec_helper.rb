ENV['RAILS_ENV'] = 'test'
ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '/../../../..'

require File.expand_path(File.join(ENV['RAILS_ROOT'], 'config/environment.rb'))
require 'spec'
require 'spec/rails'

def load_schema
  config = YAML::load(IO.read(File.dirname(__FILE__) + '/../db/database.yml'))
  ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + "/debug.log")

  db_adapter = "test"
  
  ActiveRecord::Base.establish_connection(config[db_adapter])
  load(File.dirname(__FILE__) + "/../db/schema.rb")
  require File.dirname(__FILE__) + '/../init.rb'
end
