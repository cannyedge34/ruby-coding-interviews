# frozen_string_literal: true

require_relative '../lib/big_o'

describe BigO do
  it 'sum method returns 10' do
    expect(described_class.new.sum(4)).to eq(10)
  end
end
