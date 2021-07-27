# OO ruby class
# object factory
# Stores data from API in Objects

class Country
    attr_accessor :country, :population, :confirmed, :recovered, :deaths

    @@all = []

    def initialize(country, population, confirmed, recovered, deaths)
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

    def self.find_by_name(country) # Checks to see if country object already exists
        @@all.detect {|c| c.country == country}
    end 
    
end