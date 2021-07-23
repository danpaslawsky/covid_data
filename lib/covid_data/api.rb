# responsible for talking with API website
# sends data to country class to receive parsed info to be put into objects
# api controls this class and tells it what to search for

class API
    
    def self.get_country_info(country_name)
        url = "https://covid-api.mmediagroup.fr/v1/cases?country=#{country_name}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        #binding.pry
        country_data = hash["All"]
        country = Country.new(country_data["country"], country_data["confirmed"], country_data["recovered"], country_data["deaths"], country_data["population"])
            #binding.pry
        country
    end
end
