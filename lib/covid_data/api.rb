# responsible for talking with website's API
# CLI controls this class and tells it what to search for

class API
    
    def self.get_country_info(country_name)
        url = "https://covid-api.mmediagroup.fr/v1/cases?country=#{country_name}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        country_data = hash["All"]

            if country_data
                country = Country.new(country_data["country"], country_data["population"], country_data["confirmed"], country_data["recovered"], country_data["deaths"])
            else
                nil
            end           
    end
end
