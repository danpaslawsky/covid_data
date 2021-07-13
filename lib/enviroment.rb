# require all of the files so they can talk to each other
# require_relative: requiring something that is in same repo folder, requiring other files inside of the same repository.
#   - If someone else clones project that file would still be in the same place realtive to this enviroment file

require_relative "./covid_data/version" 

require 'bundler'
Bundler.require # requires all gems listed in the gemfile

require_relative "./covid_data/api"
require_relative "./covid_data/cli"
require_relative "./covid_data/country"


module CovidData
  class Error < StandardError; end
  # Your code goes here...
end
