require 'player'

describe Player do
  let(:test_player) {Player.new('Nata')}
  describe '#name' do
    it 'displays the name of the player' do
      expect(test_player.name).to eq 'Nata'
    end
  end
end
