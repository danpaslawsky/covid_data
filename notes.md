
1. classes
    2a. class relationships
2. flow of app    

Classes:
- cli (Command Line Interface - app controller)
- api (Application Programming Interface - parses data) 
- country (data factory/ object class) 


Flow:
CLI
- user is welcomed to the app
- user is asked to enter a country they would like to get Covid-19 data for
- user enters country of choice
- validate correct spelling
        If returns nill
        display to user "check spelling or try entering a differnt country"
        
- CLI checks the object class(country.rb) for repeat inquiries, objects that already exist. 
        If yes 
        use that object to display to user 
        if no 
        pass user input to API for the new instance to display   
- ask user if they would like another search
        If yes
        go back to top of menu method 
        loop until user says "no"
        exit program


API
- parses requested information from the web sites api, displays the info to the user via the CLI and stores information as an object in the Country.rb Class, aka: the object class

Country.rb (Object Class)
- Stores objects of inforamtion parsed by the API
- Keeps track of all requests made by user