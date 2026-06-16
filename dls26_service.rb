# DLS26 Fan Website - Ruby Backend
# Rails integration and Ruby utilities

class Player
  attr_accessor :id, :name, :position, :rating, :team
  
  def initialize(id, name, position, rating, team)
    @id = id
    @name = name
    @position = position
    @rating = rating
    @team = team
  end
  
  def to_s
    "#{@name} - #{@position} (#{@rating})"
  end
end

class Match
  attr_accessor :id, :team1, :team2, :score, :date
  
  def initialize(id, team1, team2, score, date)
    @id = id
    @team1 = team1
    @team2 = team2
    @score = score
    @date = date
  end
  
  def to_s
    "#{@team1} vs #{@team2}: #{@score} (#{@date})"
  end
end

class DLS26Service
  def initialize
    @players = []
    @matches = []
  end
  
  def add_player(player)
    @players << player
  end
  
  def get_all_players
    @players
  end
end
