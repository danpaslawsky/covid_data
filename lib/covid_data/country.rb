# object factory

class Country
    attr_accessor :country, :confirmed, :recovered, :deaths, :population, :people_vaccinated

    @@all = []

    def initialize(country, confirmed, recovered, deaths, population, people_vaccinated) # change to meta programming. re-write as a hash or symbols
        @country = country
        @confirmed = confirmed
        @recovered = recovered
        @deaths = deaths
        @population = population
        @people_vaccinated = people_vaccinated

        @@all << self
    end

end