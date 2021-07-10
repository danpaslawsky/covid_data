# responsible for talking with API website

class API

    def self.start
        url = "https://covid-api.mmediagroup.fr/v1/cases?country=France"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        #array_of_country_data = hash["country"]
        #array_of_country_data.each do |country|
        #binding.pry
        #end
    end
end
