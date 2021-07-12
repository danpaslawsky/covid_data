# object factory

class Country
    attr_accessor :confirmed #:recovered, :deaths, :population, :people_vaccinated

    @@all = []

    def initialize(confirmed) # change to meta programming. re-write as a hash or symbols
        @confirmed = confirmed
        #@country = country
        #@recovered = recovered
        #@deaths = deaths
        #@population = population
        #@people_vaccinated = people_vaccinated

        @@all << self
    end

    def self.all
        @@all
    end    

end