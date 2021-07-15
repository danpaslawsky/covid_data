# responsible for talking with API website

class API
    
    def self.get_country_info(country_name)
        url = "https://covid-api.mmediagroup.fr/v1/cases?country=#{country_name}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        
        country_data = hash["All"]
        binding.pry
        country = Country.new(country_data["country"], country_data["confirmed"], country_data["recovered"], country_data["deaths"], country_data["population"])
      
       country
    end
end
