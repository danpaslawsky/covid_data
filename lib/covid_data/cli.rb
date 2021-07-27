# command line interface
# app controller, interacts with user and connect files together

class CLI 
     
    def start
        country_name = get_user_country_input # gets user input

        if  country = Country.find_by_name(country_name) || country =  API.get_country_info(country_name) # if Country.findbyname returns obj, return it OR call api and return new object
            display_country_data(country)  #  display it
        else 
            puts "Error"
            puts "Could not find country entered"
            puts "Please check the spelling"
        end      
        loop
    end

    def get_user_country_input
        puts "Please type the full name of the Country you would like to get Covid-19 data for"
        user_input = gets.strip.capitalize 
    end

    def display_country_data(country)
        puts "Country: #{country.country}"
        puts "Country Population: #{country.population}"
        puts "Confirmed Cases: #{country.confirmed}" 
        puts "Recovered Cases: #{country.recovered}" 
        puts "Deaths: #{country.deaths}" 
    end 
    
    def loop # ask user if they want another search, if yes, run program over again until user says no. 
        puts " "
        puts "Would you like to enter another country? Enter Yes or type any other key"
        input = gets.strip.capitalize
             
        if input == "Yes" || input == "Y"
            start
        else
            puts "Goodbye!" 
        end
    end    
end

 

