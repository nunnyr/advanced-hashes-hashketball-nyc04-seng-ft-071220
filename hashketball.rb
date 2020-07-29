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
