# frozen_string_literal: true

require_relative '../lib/symetric_difference'

describe SymetricDifference do
  it 'returns the symetric difference' do
    expect(described_class.new.call([1, 2, 3, 4, 5], [1, 2, 3])).to eq([4, 5])
    expect(described_class.new.call([6, 7, 8, 9], [9, 10])).to eq([6, 7, 8, 10])
  end
end
