require 'game'

describe Game do
  let(:player_1) {double :player}
  let(:player_2) {double :player}
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

end
