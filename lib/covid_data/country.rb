# OO ruby class
# object factory


class Country
    attr_accessor :confirmed, :recovered, :deaths, :population

    @@all = []

    def initialize(confirmed, recovered, deaths, population) # change to meta programming. re-write as a hash or symbols
        @confirmed = confirmed
        @country = country
        @recovered = recovered
        @deaths = deaths
        @population = population

        @@all << self
    end

    def self.all
        @@all
    end 
    
    def country
        
        array_of_country_data.all.select do |country|
            country.confirmed == self
            country.recovered == self
            country.deaths == self
            country.population == self
            
        end
    end    
end