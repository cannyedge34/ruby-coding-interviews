# frozen_string_literal: true

require_relative '../lib/character_sequence'

describe CharacterSequence do
  it 'returns the sequence of a specific character that appears the most in the sequence' do
    expect(described_class.new.call('Pressuuuure')).to eq('uuuu')
    expect(described_class.new.call('Boat')).to eq('B')
    expect(described_class.new.call('aBBBcc')).to eq('BBB')
    expect(described_class.new.call('aCCCBBB')).to eq('CCC')
    expect(described_class.new.call('a hot  dog')).to eq('   ')
    expect(described_class.new.call('ha hot  dhogh')).to eq('hhhh')
  end
end
