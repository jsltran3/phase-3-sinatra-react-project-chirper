# Phase 3 Project Backend: Chirper

# Description
Everyone's heard of the issues surrounding Twitter. The exodus from Twitter during the recent aquisition is cuasing a lot of users to flee. Fortunately, there's a solution: welcome Chirper, the ground breaking app to change social media and provide safe haven for Twitter users. 

# Functionality 
1. Fill in form to create users and submit
2. To create a "chirp", fill in the input form with your post and voila! You have a chirp for the world to see. 
3. You can like or nay the message by clicking on the yay/nay button
4. Clicking on the "X" will delete the message

# Installation Instructions
1. Run: bundle install
2. Run: bbundle exec rake db:migrate
3. Run: bundle exec rake server

# Links
https://github.com/jsltran3/phase-3-sinatra-react-project-chirper-frontend

# SQL Table Relationships
- Each 'Chirp" class instance within the '/chirps' has the 'belongs to' Active Record relationship to the 'Chirper Profile' class
- Each 'Chirper Profile" class instance within the '/chirper_profile' has the 'has many' Active Record relationship to the 'Chirps' class

# Goals
- The ability for the user to create, read, and delete Chirper Profiles
- Underneath every Chirper User will include the ability to create new Chirps, see the list, toggle the "Like" heart button, as well as delete the Chirps
