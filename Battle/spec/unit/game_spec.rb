require 'game'

describe Game do
  let(:player_1) {double :player_1, name: "Hamish" }
  let(:player_2) {double :player_2, name: "Hugh" }
  subject { described_class.new(player_1, player_2) }

  context "when first created" do

    it "stores player_1" do
      expect(subject.player_1).to eq player_1
    end

    it "stores player_2" do
      expect(subject.player_2).to eq player_2
    end

  end

  describe "#attack" do

    it 'attacks player_2' do
      expect(player_2).to receive(:reduce_health).with(10)
      subject.attack
    end

  end

  describe '#turn_name' do
    context 'when game started' do
      it 'returns player 1 name' do
        expect(subject.turn_name).to eq player_1.name
      end
    end
    context 'after player 1 has attacked' do
      it 'returns player 2 name' do
        allow(player_2).to receive(:reduce_health)
        subject.attack
        expect(subject.turn_name).to eq player_2.name
      end
    end
  end

end
