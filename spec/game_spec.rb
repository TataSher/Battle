require 'game'

describe Game do
  let(:test_game) { Game.new('Jack', 'Nata') }
  let(:test_player) { double(:player, hp: 100, :hp= => 90) }

  it 'creates 2 players' do
    expect(test_game.player_1.name).to eq('Jack')
    expect(test_game.player_2.name).to eq('Nata')
  end

  describe '#attack' do
    it 'Attacks a player and takes away HP' do
      allow(test_player).to receive(:hit).and_return(test_player.hp -= 10)
      expect(test_game.attack(test_player)).to eq test_player.hp - 10
    end
  end

  describe '#change_turn' do
    it 'Changes turn' do
      expect(test_game.change_turn).to eq 'Nata'
    end
  end
end
