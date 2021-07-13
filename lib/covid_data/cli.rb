
class CovidData::CLI   #namespacing 

    def start
        puts "Welcome to your source for Covid-19 data!"
        #API.fetch_array_of_country_data
        self.menu
        #binding.pry
    end

    def menu
        puts "Would you like to see information on Covid-19 in your home country?"
        puts "Type 'yes' to continue or any other key to exit."
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "Please type the full name of your country"    # test
            display_country_covid_data
        else
            #end program
            puts "Goodbye!"
        end
    end

    def display_country_covid_data
        # Access all the country covid data
        # Print them out
        
        puts "Enter"     # test
        Country.all.each do |country|
            puts country 
        end
    end    

end

 

