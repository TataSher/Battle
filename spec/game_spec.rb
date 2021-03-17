require 'game'

describe Game do
  let(:test_game) { Game.new('Jack', 'Nata') }
  let(:test_player) { double(:player, hp: 100, :hp= => 90) }

  describe '#attack' do
    it 'Attacks a player and takes away HP' do
      allow(test_player).to receive(:hit).and_return(test_player.hp -= 10)
      expect(test_game.attack(test_player)).to eq test_player.hp - 10
    end
  end
  describe '#accepts player instances' do
    it 'creates 2 players' do
      expect(test_game).to include(test_game.player_1)
    end
  end
end
