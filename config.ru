require 'bundler'
Bundler.require

set :environment, :production
set :run, false

require './app'
run Sinatra::Application
