class Player
  def initialize(name, hp = 10000)
    @name = name
    @hp = hp
  end

  def hit
    @hp =  @hp - 10
  end

  attr_reader :name, :hp
end
