# OO ruby class
# object factory
# receives data from API and stores the data in objects

class Country
    attr_accessor :country, :population, :confirmed, :recovered, :deaths

    @@all = []

    def initialize(country, population, confirmed, recovered, deaths) # change to meta programming. re-write as a hash or symbols
        @country = country
        @population = population
        @confirmed = confirmed
        @recovered = recovered
        @deaths = deaths
        

        @@all << self
    end

    def self.all
        @@all
    end 

# Checks to see if country object already exists
    def self.find_by_name(country)
        @@all.detect {|c| c.country == country}
    end 
    
end