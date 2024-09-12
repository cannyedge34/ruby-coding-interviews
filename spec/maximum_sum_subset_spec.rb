# frozen_string_literal: true

require_relative '../lib/maximum_sum_subset'

describe MaximumSumSubset do
  it 'returns the position of the first and last element of the subset with maximum sum' do
    expect(described_class.new.call([2, -4, 6, 8, -10, 100, -6, 5])).to eq('2,5')
  end
end
