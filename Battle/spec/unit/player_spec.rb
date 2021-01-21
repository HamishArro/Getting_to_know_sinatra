require 'player'

describe Player do
  let(:name) { "Gary" }
  subject { described_class.new(name) }

  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq name
    end
  end

  describe '#health' do
    it 'defaults at 100' do
      expect(subject.health).to eq 100
    end
  end

  describe '#reduce_health' do
    it 'reduces health by the given amount' do
      amount = 10
      expect{subject.reduce_health(amount)}.to change{ subject.health }.by -amount
    end
  end

end
