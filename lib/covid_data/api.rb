# responsible for talking with my api website

class API 

    def self.start
        url = "https://covid-api.mmediagroup.fr/v1/cases?country=France"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        formatted_response = JSON.parse(response)
        binding.pry
    
    end

end