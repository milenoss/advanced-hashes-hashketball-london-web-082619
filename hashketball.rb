require 'pry'

# We will start by defining require 'pry' at the top because this lab will make use of binding.pry alot. 

# def game_hash will be the main method with all the data. 

#   With the data provided by the lab. We will start building a new hash to arrange the home team data.The same will be required for away team. I am only going to explain you the step by step process for the home team and you can do the same for the away. 
#   This will take some time but make sure your curly brackets are opened and closed at the right places to avoid errors. 
#   In my method i have created a new hash and named it as hash { 
#     I then created a key  :home =>{ placed another set of keys :team_name, :colors and :players inside the hash. 
#     :team_name key value is a string "Brooklyn Netsand" :colors value is inside an strings inside an array.["Black" and "White".]
#       :players[is a key][but value to :home] will have to be be under a different hash so swe will open the hash again for players and then add the players name will be a string "Alan Anderson"[is a key but value to players]. This player stats will be under a new hash. :number => 0, :shoe => 16 etc..  make sure to close the hash for players which you created. The hash for :home and hash at the begining can be closed at the end of home team data.
       
#       The results should look like below - 
       
def game_hash

hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  :away => {:team_name => "Charlotte Hornets",
    :colors => ["Purple","Turquoise"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      "Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }
     }
    }
   }
end



# def num_points_scored  - 
#   We will now find the number of points scored by any particular player. 
#   We will pass a parameter called sportsman. You can place it as anything you want. If you do binding.pry you will see a random player name being passed by the test in the method. 
# We need to call our main method inside this method so we can iterate over it with each.do method. 
# We will also have to put a place holder scores = 0. We are doing this to assign the variable at the later stage when we are able to pull the scores. 
# Start by iterating game_hash.each do with a key and value. In our example we have got team_position as key and team_data as the value. 
# When we check the the key and value in binding.pry. We will see # team_position = :home and team_data = be the value of the home :team_name, :colors, :players  etc 
# We will iterate over the team_data again to get to the points. 
 # When we iterate over team_data will assign again a key of #player_name and information as a value. 
  # player_name will result = :team_name 
  # # informatin will be the value of those keys in this example :"Brooklyn nets."
  # # Before iterating again we can use an if statement to check if :team name(players_name) will be equal to :players. It will be true ! as they are both keys in the same hash. 
  # # We can now iterate over the information which holds values to  team information and assign a new variable calling it key and value as name and numbers
  # name = "Alan anderson" It can be any players name. 
  # numbers = will have the players stats. 
  
  # # With this iteration we would have got to the key where the #name of players resides. 
  # We will again use if statement to check if name == sportsman 
  # we know it will be true ! since sportsman is a random players # name and so is our name variable.
  # Now we will iterate over the value of the players(numbers)
  # numbers.each do will have key and a value again. 
  # We will do a if statment here and check if the key will be #==:points and if it doesn then we will assign the value to #the score = 0 placeholder which we defined at the beggining.
   
  # Once done we will end the method with atleast 8 number of ends as we have used alot of each and if in the method.
  # The result of the method will show how many points any particular player scored. 


def num_points_scored (sportsman)
  #binding.pry
game_hash
scores = 0
  game_hash.each do |team_position, team_data|
    #binding.pry
  team_data.each do | player_name, information|
  # binding.pry
  if player_name == :players                  
  information.each do |name, numbers|
   # binding.pry
  if name == sportsman              
  numbers.each do |key, value|
    # binding.pry
  if key == :points
  return scores = value
  end
  end
  end
  end
  end
  end
end
end

# This method will find shoe_size of particular player in the game_hash. 
# We will define the shoe_size method and pass a parameter (foot).
# You can check the foot parameter value by using binding.pry
# foot = a random players name in this case it is "Jeff Adrien"
# We will use a place holder shoe_sizett = 0 to store our shoe size  value. 
## Now we can iterate the game_hash with each method and pass a #key and value variable in the block. In this case it will be #team_position and team_data again. 
# binding.pry will tell us what team_position will be :home and team_data is the home team value :team_name :colors etc. 
# # We will now iterate over team_data to get to the shoe size. We will pass player_name as key and player_size value. 
# player_name = :players
# player_size = "Jeff Adrien" and its value :number, :points etc.
# We will compare players_name  == :players which will result in true. 
# The logic behind the comparison is to iterate and compare it to already given hash on the data so it comes true. 

# We will iterate again on player_size using each.do method and pass name and number as our variable. 
# name = "Desanga Diop"
# numbers = stats of the player. :number :shoe etc. 
 
# Since we know foot parameter is players name now we can compare the foot to the name variable. It will result in true 
# so we can iterate numbers variable to get the shoe size. 
# We will iterate numbers and pass |key and value| in the block. 
# Use if to compare if key ==:shoe if its is then we will assign the place holder and return shoe_sizett = value. 
# That should give us particular players shoe size. Please make  # sure you have closed out all the blocks.

def shoe_size (foot)
  
  shoe_sizett = 0
  game_hash.each do | team_position,team_data|
    team_data.each do |player_name, player_size|
      if player_name == :players
        player_size.each do |name, numbers|
          if name == foot
            numbers.each do |key, value|
              if key == :shoe 
               # binding.pry
               return shoe_sizett = value
                end
             end
            end    
          end
        end
      end
  end
end

# # This method requires us to find the colors of the team. 
# # We will start of with defining the team_colors method and pass one parameter(team).
# team = "Brooky nets"
# We will iterate using each do method over game_hash and assign team_position and team_data. 
# team_position = :home
# team_data = value of :home eg. :team_name :colors :player etc
# We will iterate over team_data and assign key and value which are team_color and team_data. 
# Team_color = team_name 
# Team_goal =  team_name value which is = Brookly nets. 
# We can now compare if team_name == name and returning 
# game_hash[team_position][:colors] 
# This way we can directly access the colors of the team. 

def team_colors(team)
    game_hash.each do |team_position,team_data|
    #team_position is key and results home and away . team_data is value of home and away values
    team_data.each do |team_color, team_goal|
      # team_color is iterating over key colors and value is team_goal is color of the jersey
     
       if team_goal == team
         #so we are comparing team_goal which is team name and the argument team which is also team name.
      binding.pry
      return game_hash[team_position][:colors]
      # we are returning the main hash game_hash[team_position which is home and away here] then the colors.
         
      
          end
        end
       end
    end
    
  # The method requires us to team_names and pases no parameter as the instructions does not pass any argument here. However it is asking us to return an array of team. 
  # We will assign an empty array after defining the team_names to store our results. 
  # We begin with iterating game_hash with key and value. team_position is key and team_data is value. 
  # team_position = :home and away it loops through these values.
  # team_data = values of :home
  
  # We will iterate again over team_data and assign key and value which is team and name. 
  # # team = is the key team name Brooklyn nets or Charlotte hornets. 
  # name = 
  # We can then compare the values 
  # if team == :team_name  which will be true. 
  #   We can then push the name which was the value 
  
    
    def team_names
       arr = []
       game_hash.each do |team_position,team_data|
      team_data.each do |team,name|
        binding.pry
        if team == :team_name
         arr.push(name)
       end
     end
   end
    arr
 
  end
  
  #iterate over the main hashes and then dig one step in and then another step to get to players numbers. once you there just match the variable to the key to get results. push it into a new array .  
  
  def player_numbers(array)
    place_holder = []
    game_hash.each do |team_position,team_data|
       #teamposition = home and away team. team_data = value of home and away
       if team_data[:team_name] == array
         #we are accessing team name directly from team data. 
         team_data[:players].each do |player_name,player_data|
           #again we are accessing team data to find players 
          place_holder << player_data[:number]
          #putting the place holder and pushign the number inside of player data.

         end
      end
    end
      place_holder
    end
  
  def player_stats(stats)
    game_hash.each do |team_position,team_data|
      team_data[:players].each do |key,value|
        #had to reiterate because i could not get exact value. 
      if key == stats 
        return value
  end
 end 
end
end
    
  #player with the biggest shoe size and biggest rebound.  
def big_shoe_rebounds
rebound = 0 
shoe = 0 
  game_hash.each do |team_position, team_data|
    team_data[:players].each do |key,value|
    value.each do |k,v|
      if k == :shoe #when key matches the loop below will trigger. 
        if v > shoe #checks the value of each shoe
          shoe = v #max value of the shoe is assigned
          rebound = team_data[:players][key][:rebounds]
        #rebound is corresponding with the value of the shoe and it is assigned with the player with highest shoe size and rebounds.
    

          end
        end
      end
    end
   end
  rebound
 end 
 
 def most_points_scored
   most_points = 0 
   top_point_scorer = " "
   game_hash.each do |team_position, team_data|
     team_data[:players].each do |k,v|
     if v[:points] > most_points
       most_points = v[:points]
       top_point_scorer = k
       
      # binding.pry
      end
    end
  end
 
 top_point_scorer
 end 
 
 
 def winning_team
    home_points = 0 
    away_points = 0
   game_hash.each do |team_position, team_data|
     #binding.pry
     if team_position == :home 
       team_data[:players].each do |k,v|
      home_points += v[:points] 
     end
       elsif
       team_position == :away
       team_data[:players].each do |k,v|
         away_points += v[:points]
   
 end
 end
 end
 #i need more points than them to win
 if home_points > away_points 
return game_hash[:home][:team_name]
else 
   away_points > home_points
return game_hash[:away][:team_name]
 end
 end
 
 def player_with_longest_name
   longest_name = ""
   game_hash.each do |team_position,team_data|
     if team_position == :away
       team_data[:players].each do |k,v| 
           players_name = k
           if players_name.size > longest_name.size
             longest_name = players_name
         
          #binding.pry
      end 
     end
   end
  end
longest_name
 end
 
 def most_stealer
   most_steals = 0 
   top_point_scorer = " "
   game_hash.each do |team_position, team_data|
     team_data[:players].each do |k,v|
     if v[:steals] > most_steals
       most_steals = v[:steals]
       top_point_scorer = k
       
      # binding.pry
      end
    end
  end
 
 top_point_scorer

 end 
 
 
 
 def long_name_steals_a_ton?
   most_stealer == player_with_longest_name
end

 
     