# frozen_string_literal: true

require_relative '../lib/capitalize'

describe Capitalize do
  it 'returns capitalized sentence' do
    expect(described_class.new.call('a short sentence')).to eq('A Short Sentence')
    expect(described_class.new.call('a lazy fox')).to eq('A Lazy Fox')
    expect(described_class.new.call('look it is working')).to eq('Look It Is Working')
  end
end
