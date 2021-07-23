# OO ruby class
# object factory
# receives data from API and stores the data in objects
# CLI class reaches into those objects to display info to user

class Country
    attr_accessor :country, :confirmed, :recovered, :deaths, :population

    @@all = []

    def initialize(country, confirmed, recovered, deaths, population) # change to meta programming. re-write as a hash or symbols
        @country = country
        @confirmed = confirmed
        @recovered = recovered
        @deaths = deaths
        @population = population

        @@all << self
    end

    def self.all
        @@all
    end 

# Checks to see if country object already exists
    def self.find_by_name(country)
        @@all.detect {|c| c.country == country}
       # binding.pry
    end 
    
end