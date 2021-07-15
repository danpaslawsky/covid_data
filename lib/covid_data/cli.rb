# command line interface
# interact with user and connect files together

# Methods:
# start_welcomes_user
# get_user_country
# valid_input_check(input)
# get_country_data
# display_country_data_for(chosen_country)



class CovidData::CLI   #namespacing 

    def start
        puts "Welcome to your source for Covid-19 data!"
        # start up menuing
        #API.fetch_array_of_country_data
        #self.start
        #binding.pry
        menu
    end

    def menu
    # get user input
    # check to see if country exists already, if yes use it, if no pass user input to api and print that new instance
    # ask user if they want another search, if yes, go back to top of this menue (loop) until user says no.
    # say goodbye
    country_name = get_user_country_input
    country = API.get_country_info(country_name)
    binding.pry
    end

    def get_user_country_input
        puts "Would you like to learn about Covid in your country"
        puts "Please type the full name of the Country you would like to get Covid-19 data for."
        puts "Entry is case sensative; ex: France, not france"
        user_input = gets.strip
        
        # if user_input == "yes" || user_input == "y"
        #     puts "Please type the full name of your country"    # test
        #     display_country_covid_data
        # else
        #     #end program
        #     puts "Goodbye!"
        # end
        user_input
    end

    def get_country_data
    
    end
    
    def valid_input_check
        # check to make sure country is written capitalized
        # correct spelling of country. Or Give list of countries to choose from?
    end

    def display_country_data_for()# << # chosen_country
        # access get_country_data

        # Country.all.each do |country|
        #     puts country 
        # end
    end  

end

 

