# frozen_string_literal: true

require 'bundler'
Bundler.require
require 'dotenv/load'

# get the path of the root of the app
APP_ROOT = File.expand_path('.', __dir__)
# require the controller(s)
Dir.glob(File.join(APP_ROOT, 'app', 'controllers', '*.rb')).each { |file| require file }
# require the model(s)
Dir.glob(File.join(APP_ROOT, 'app', 'models', '*.rb')).each { |file| require file }
# require database configurations
require File.join(APP_ROOT, 'database')

# configure MyApp settings
class MyApp < Sinatra::Base
  set :method_override, true
  set :root, APP_ROOT
  set :views, File.join(APP_ROOT, 'app', 'views')
  set :public_folder, File.join(APP_ROOT, 'app', 'public')
end
