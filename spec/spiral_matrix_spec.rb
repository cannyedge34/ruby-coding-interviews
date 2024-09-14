# frozen_string_literal: true

require_relative '../lib/spiral_matrix'

describe SpiralMatrix do
  it 'returns spiral matrix' do
    expect(described_class.new.call(2)).to eq([[1, 2], [4, 3]])
    expect(described_class.new.call(3)).to eq([[1, 2, 3], [8, 9, 4], [7, 6, 5]])
    expect(described_class.new.call(4)).to eq(
      [
        [1, 2, 3, 4],
        [12, 13, 14, 5],
        [11, 16, 15, 6],
        [10, 9, 8, 7]
      ]
    )
    expect(described_class.new.call(5)).to eq(
      [
        [1, 2, 3, 4, 5],
        [16, 17, 18, 19, 6],
        [15, 24, 25, 20, 7],
        [14, 23, 22, 21, 8],
        [13, 12, 11, 10, 9]
      ]
    )
  end
end