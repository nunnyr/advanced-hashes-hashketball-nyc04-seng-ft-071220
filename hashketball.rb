# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

 #I want to match the name we are looking for with the name given as a value.
#Once I match up the name, provide the :points
#points = [:player_name][:points]


def num_points_scored(string) 
  game_hash.each do |hash, info|
    player_hash = info[:players] #this returns the key of players and the hash  
      player_hash.each do |key, result|
        if(string == key[:player_name])
          return key[:points]
          #binding.pry
      
        end
      end

  end 
end

def shoe_size(string) 
  game_hash.each do |hash, info|
    player_hash = info[:players] #this returns the key of players and the hash  
      player_hash.each do |key, result|
        if(string == key[:player_name])
          return key[:shoe]
          #binding.pry
      
        end
      end

  end 
end



def team_colors(string)
  game_hash.each do |key, value|
    #i want to go in either the home hash or the away hash and i want to identify
    #so i am going to iterate over those keys
    team = game_hash[key][:team_name]
    color = game_hash[key][:colors]
    #the above is the team name
    #the colors of the team are game_hash[key][:colors]
     if (string == game_hash[key][:team_name])
      p "hellooo hellooo"
      #binding.pry
       return color

  
     #the key will either return home or away
      #if key[:home] = true
      #home = key[:home]
      end      
  end
end

team_colors("string")


def team_names
  final = []
  game_hash.each do |key, value|
    team = game_hash[key][:team_name]
    final << team
    #binding.pry
    # if (string == game_hash[key][:team_name])
    #   p "hello we out here"
      
      

    # end
  end
  p final
end

def player_numbers(string)
  #access the players
  #for every player we want the jersey
  #return only the jersey numbers in a final array
  #similar to how we got the points array
  brooklynNets = []
  charlotte = []
 

  if(string == "Brooklyn Nets")
    game_hash.each do |hash, info|
      
      player_hash = info[:players]
      
      player_hash.each do |key, result|
         jersey = key[:number]
         if(brooklynNets.length < 5)
         brooklynNets << jersey     
        end
        p brooklynNets
      end
    end 
   
    # p final 
  end

  # else
  #   game_hash.each do |hash, info|
  #     binding.pry
  #     player_hash = info[:players]
      
  #     player_hash.each do |key, result|
  #        jersey = key[:number]
  #        if(charlotte.length < 5)
  #        charlotte << jersey     
  #       end
  #       p charlotte
  #     end
  #   end 
    
  # end

end



#########################################################################
#######review with ERIC#################
#if you can't find pry then you would do gem install pry
#at the top you would require 'pry'. This is the act of getting this tool
#anytime that you have a binding.pry in your method definition it will stop the code. 
#but it does not invoke it if its a method you wrote on your own to test
#When I run rspec line 1 gets read which is what triggers the binding.pry to be hit
#sometimes binding.pry at the VERY end of your file may not work.
#sometimes you can put a 0 or something at the end so that it can get hit

#for all of the players that are in the league you want an array of hashes
#[{}, {}, {}, {}, {}]
#do not assume that your hash will always be structured with 2 teams inside of it


def get_me_all_players_please
 #[{}, {}, {}, {}, {}]
 #use enumerables to iterate
 
 all_players = []
 game_hash.each do |home_or_away_sym, team_info_hash|
  #if you want to get behind the value of a key put it behind brackets
    all_players += team_info_hash[:players]
    #in RUBY you can add arrays [1,2,3] + [4,5,6] ===== [1,2,3,4,5,6]
  binding.pry
 end
 all_players
end



def big_shoe_rebounds
##method called maxby that expects the block to be a number

    #get_me_all_players.max_by
    #get_me_all_players.min_by 

theInfoAboutThePlayerWithBigShoes = get_me_all_players.max_by do |player_hash|
      player_hash[:shoe]
    end
    #it gives me the element in the array that has the biggest something 
    theInfoAboutThePlayerWithBigShoes[:rebounds]
end

binding.pry








def find_a_single_team_based_on_name(team_name_arg_str)

  game_hash.find do |home_or_away_sym, team_info_hash|
    team_info_hash[:team_name] == team_name_arg_str
    #the return of find is always going to be an array of length 2
    binding.pry
end

find_a_single_team_based_on_name(team_name_arg_str) #now you know for a fact I am invoking this number


def team_colors(arg_team_name)
  infoAboutAsingleTeam = find_a_single_team_based_on_name(arg_team_name)
  infoAboutASingleTeam[1][:colors]
  #the above is the implicit returnand find will always return an array of 2
  #and you can uise the index to find a color 
  #if you dont know the index THEN its okay to write an if statement to check if its the index that you are at

  binding.pry
end
#method definition means you need to invoke the method. parenthese are optional. i prefer it.
#whereami - is there is the scope
# v.class will tell you what things are in
# v.keys 
#.each returns the hash that you are iterating over
#now we have a single method whose job is to get us all of the players
get_me_all_players_please() #this returns an array of hashes


#we want to use a map bc it will return a new array
#we want to go through an array of 5 hashes and make it one array
#if we are transforming the elemtns map is your best friend

def player_numbers(teamName)
  infoABoutASingleTeam = find_a_single_team_based_on_name(arg_team_name)
  players_on_a_team = = infoABoutASingleTeam[1][:players]
  players_on_a_team.map do |player_hash

    player_hash[:number]
  end
end

def team_names
  game_hash.map do |home_or_away_sym, team_info_hash|
    team_info_hash[:team_name]
  end
end 
#map transforms key values into strings.


####################FIND
#this method returns an array of hashes
#you don't need an if statement because it is comparing what it found to the argument passed originally in the definition


def player_stats(player_name_arg)
  get_me_all_players_please().find do |player_hash|
  player_hash[:player_name] == player_name_arg
    #binding.pry
  end
end 



def num_points_scored(player_name_argument)
  found_player_hash = player_stats(player_name_argument)
  found_player_hash[:points]
  #player_stats here is a helper method

end


def shoe_size(player_name__a)
  player_stats(player_name_a)[:shoe]
end 
#############You can chain methods together



