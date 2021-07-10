require_relative "./covid_data/version"

require 'bundler'
Bundler.require # requires all gems listed in the gemfile

require_relative "./covid_data/cli"
require_relative "./covid_data/api"
require_relative "./covid_data/country"


module CovidData
  class Error < StandardError; end
  # Your code goes here...
end
