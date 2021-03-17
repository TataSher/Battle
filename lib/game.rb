class Game
  attr_reader :player_1, :player_2, :turn
  def initialize(player_1, player_2)
     @player_1 = Player.new(player_1)
     @player_2 = Player.new(player_2)
     @turn = @player_1.name
  end

  def attack(player)
    player.hit
  end

  def change_turn
    if @turn == @player_1.name
      @turn = @player_2.name
    else
      @turn = @player_1.name
    end
  end
end
