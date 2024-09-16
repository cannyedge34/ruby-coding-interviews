# frozen_string_literal: true

require_relative '../lib/reverse_integer'

describe ReverseInteger do
  it 'returns the reverse integer' do
    expect(described_class.new.call(56)).to eq(65)
  end
end
