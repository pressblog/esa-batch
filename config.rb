ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
Bundler.require

require File.expand_path('../esa_batch', __FILE__)

EsaBatch.configure do |config|
  config.access_token = ENV.fetch('ESA_ACCESS_TOKEN')
end
