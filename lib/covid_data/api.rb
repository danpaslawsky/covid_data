# responsible for talking with API website

class API
    
    def self.start
        url = "https://covid-api.mmediagroup.fr/v1/cases?country=France"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_country_data = hash["All"]
        
        array_of_country_data.each do |country|
            Country.new(country["confirmed".to_i])
            #country_instance.str = country["country"]
        end
        binding.pry
    end

end
