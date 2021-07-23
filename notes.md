
1. classes
    2a. class relationships
2. flow of app    

Classes:
- api (Application Programming Interface - data scraper) 
- cli (Command Line Interface - app controller)
- country (data factory/ object class) 


Flow:
CLI
- user is welcomed to the app
- user is asked to enter a country they would like to get Covid-19 data for
- user enters country of choice
- validate correct spelling
        If returns nill
        ask user to check spelling
        
        If comes back nill a 2nd time
        tell user: "country does not apear to have any data on Covid-19. Please choose another country" 
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




Rubber Ducky Quetions
- How do I figure out the logic to solve the apps problems?
- What are the problems the app is trying to solve?
        - How do I get the app to display the data from the API?
 
