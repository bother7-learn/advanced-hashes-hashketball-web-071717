# Write your code here!
def game_hash

hashket = {
  :home =>
  {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players=>
    {
      "Alan Anderson" => {
      :number=>0,
      :shoe=>16,
      :points=>22,
      :rebounds=>12,
      :assists=>12,
      :steals=>3,
      :blocks=>1,
      :slam_dunks=>1
  },
    "Reggie Evans" => {
    :number=>30,
    :shoe=>14,
    :points=>12,
    :rebounds=>12,
    :assists=>12,
    :steals=>12,
    :blocks=>12,
    :slam_dunks=>7
},
  "Brook Lopez" => {
  :number=>11,
  :shoe=>17,
  :points=>17,
  :rebounds=>19,
  :assists=>10,
  :steals=>3,
  :blocks=>1,
  :slam_dunks=>15
},
  "Mason Plumlee" => {
  :number=>1,
  :shoe=>19,
  :points=>26,
  :rebounds=>12,
  :assists=>6,
  :steals=>3,
  :blocks=>8,
  :slam_dunks=>5
},
  "Jason Terry" => {
  :number=>31,
  :shoe=>15,
  :points=>19,
  :rebounds=>2,
  :assists=>2,
  :steals=>4,
  :blocks=>11,
  :slam_dunks=>1
  }
}
},
:away =>
{
  :team_name => "Charlotte Hornets",
  :colors => ["Turquoise", "Purple"],
  :players=>
  {
    "Jeff Adrien" => {
    :number=>4,
    :shoe=>18,
    :points=>10,
    :rebounds=>1,
    :assists=>1,
    :steals=>2,
    :blocks=>7,
    :slam_dunks=>2
},
  "Bismak Biyombo" => {
  :number=>0,
  :shoe=>16,
  :points=>12,
  :rebounds=>4,
  :assists=>7,
  :steals=>7,
  :blocks=>15,
  :slam_dunks=>10
},
"DeSagna Diop" => {
:number=>2,
:shoe=>14,
:points=>24,
:rebounds=>12,
:assists=>12,
:steals=>4,
:blocks=>5,
:slam_dunks=>5
},
"Ben Gordon" => {
:number=>8,
:shoe=>15,
:points=>33,
:rebounds=>3,
:assists=>2,
:steals=>1,
:blocks=>1,
:slam_dunks=>0
},
"Brendan Haywood" => {
:number=>33,
:shoe=>15,
:points=>6,
:rebounds=>12,
:assists=>12,
:steals=>22,
:blocks=>5,
:slam_dunks=>12
}
}
}

}
hashket
end

def num_points_scored(player)
data = game_hash
points = 0
if data[:home][:players][player]
  points = data[:home][:players][player][:points]
else
  points = data[:away][:players][player][:points]

end
points
end

def shoe_size(player)
  data = game_hash
  shoe = 0
  if data[:home][:players][player]
    shoe = data[:home][:players][player][:shoe]
  else
    shoe = data[:away][:players][player][:shoe]

  end
  shoe
end

def team_colors(team)
  data = game_hash
  color = []
  if data[:home][:team_name] == team
    color = data[:home][:colors]
  else
    color = data[:away][:colors]

  end
  color
end

def team_names
data = game_hash
names = []
data.each do |team, value|
  value.each do |key, string|
  if key == :team_name
    names << string

end
end
end
names
end

def player_numbers(teamname)
  data = game_hash
  numbers = []
  data.each do |team, value|
    value.each do |key, player|
      if teamname == player
      game_hash[team][:players].each do |empty, stats|
        stats.each do |stat, num|
        if stat == :number
          numbers << num
        end
      end
    end
  end
  end
  end
  numbers
end

def player_stats(name)
  data = game_hash
  fullstats = []
  data.each do |team, value|
    value.each do |key, player|
      if key == :players
        player.each do |empty, stats|
          if empty == name
            fullstats = stats
          end
        end
      end

  end
  end
  fullstats
end

def big_shoe_rebounds
data = game_hash
shoesizelist = []
reboundlist = []
data.each do |team, value|
  value.each do |key, player|
    if key == :players
    player.each do |empty, stat|
      stat.each do |category, value|
      if category == :shoe
        shoesizelist << value
      elsif category == :rebounds
        reboundlist << value
      else
      end
    end
    end
  end
  end
end

index = shoesizelist.rindex(shoesizelist.max)
reboundlist[index]
end
