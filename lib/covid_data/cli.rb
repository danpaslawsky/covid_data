# command line interface
# app controller, interacts with user and connect files together

class CLI 
     
    def start

        country_name = get_user_country_input # gets user input

        if  country = Country.find_by_name(country_name) # if Country.findbyname returns obj 
            #display_country_data(country)  #  display it
        else 
            API.get_country_info(country_name)  #   make api call
            # valid_input_check(country)            
        end      
       #binding.pry

        country = API.get_country_info(country_name) # gets country data from api
        display_country_data(country)
        loop 

    end

    def get_user_country_input

        puts "Please type the full name of the Country you would like to get Covid-19 data for."
        user_input = gets.strip.capitalize

        user_input 

    end
    
    def valid_input_check(country) # validate correct spelling   

        if country == nil
        puts "Please check your spelling of the chosen country name or try a different country name." 
        end 

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
        puts "Would you like to enter another country? Enter Yes or type any other key."
        input = gets.strip.capitalize
             
        if input == "Yes"
            start
        else
            puts "Goodbye!" 
        end
        
    end    

end

 

