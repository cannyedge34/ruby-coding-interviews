# frozen_string_literal: true

require_relative '../lib/subarray'

describe Subarray do
  it 'returns chuncked subarray' do
    expect(described_class.new.call([1, 2, 3, 4, 5], 2)).to eq([[1, 2], [3, 4], [5]])
    expect(described_class.new.call([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3)).to eq([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]])
  end
end
