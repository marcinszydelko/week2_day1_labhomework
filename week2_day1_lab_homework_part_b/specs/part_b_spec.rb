require('minitest/autorun')
require('minitest/rg')
require_relative("../part_b.rb")

class TestTeam < MiniTest::Test

  def test_get_name
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.name
    assert_equal("Lakers", result)
  end

  def test_get_players
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.players
    assert_equal(["John", "Peter"], result)
  end

  def test_get_coach
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.coach
    assert_equal("Coach_James", result)
  end

  def test_set_coach
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    team.coach = "new_coach"
    assert_equal("new_coach", team.coach)
  end

  def test_add_player
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    team.add_player("David")
    result = team.players.count
    assert_equal(3, result)
  end

  def test_check_player__exists
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.check_player("John")
    assert_equal(true, result)
  end

  def test_check_player__not_exists
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.check_player("Daid")
    assert_equal(false, result)
  end

  def test_update_score__won
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.update_score("win")
    assert_equal(3, result)
  end

  def test_update_score__loose
    players = ["John", "Peter"]
    team = Team.new("Lakers", players, "Coach_James")
    result = team.update_score("lost")
    assert_equal(0, result)
  end

end
