# OO ruby class
# object factory

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

    def self.find_by_name(name)
        @@all.detect {|c| c.country == name }
    end     

end