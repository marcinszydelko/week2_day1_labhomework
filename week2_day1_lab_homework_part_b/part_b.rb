class Team

  attr_reader :name, :players
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = Array.new(players)
    @coach = coach
    @score = 0
  end

  # def get_name
  #   return @name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   return @coach = new_coach
  # end

  def add_player(name)
    @players << name
  end

  def check_player(name)
    players = @players
    for player in players
      return true if player == name
    end
    return false
  end

  def update_score(result)
    return @score += 3 if result == "win"
    return @score if result == "lost"
  end



end
