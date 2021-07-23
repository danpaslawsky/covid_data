# command line interface
# app controller, interacts with user and connect files together
# Tells API to go fetch information 
# Receives back the data from objects created in the country.rb class


# start: -welcome_user
# menu: - get_user_country
#       - get_country_data
#       - display country data
#       - continue to ask user if they would like to check more countries until answer is no, then exit app
# valid_input_check: - Check spelling, if return is nill, error message to user to check spelling of country


class CLI 

    def start
        # start up
        make_country     
    end

    def make_country
        # ask user if they want another search, if yes, go back to top of this menue (while loop) until user says no. 
        
        country_name = get_user_country_input # gets user input
        # if country .findbyname returns obj display it
        #   else try to make api call
        #       if api is successful display new obj (Call valid inout conditon)
        #         else display error
        Country.find_by_name(user_input)
        
        country = API.get_country_info(country_name) # gets country data from api

        display_country_data
    end

    def get_user_country_input
        puts "Welcome to your source for Covid-19 data!"
        puts "Please type the full name of the Country you would like to get Covid-19 data for."
        
        user_input = gets.strip.capitalize

        user_input        
    end
    
    def valid_input_check(country)
        # validate correct spelling        
        # If returns nill
        #    ask user to check spelling 
    end 

    def display_country_data(country)
            puts "Country: #{country.country}"
            puts "Confirmed Cases: #{country.confirmed}" 
            puts "Recovered Cases: #{country.recovered}" 
            puts "Deaths: #{country.deaths}" 
            puts "Country Population: #{country.population}"             
    end    

end

 

