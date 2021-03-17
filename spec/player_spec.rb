require 'player'

describe Player do
  let(:test_player) {Player.new('Nata')}
  describe '#name' do
    it 'displays the name of the player' do
      expect(test_player.name).to eq 'Nata'
    end
  end

  describe '#attack' do
    it 'takes away HP' do
      expect { test_player.attack }.to change { test_player.hp }.by(-10)
    end
  end
end
