# frozen_string_literal: true

require_relative '../lib/anagrams'

describe Anagrams do
  it 'returns if strings are anagrams' do
    expect(described_class.new.call('rail safety', 'fairy tales')).to eq(true)
    expect(described_class.new.call('RAIL! SAFETY!', 'fairy tales')).to eq(true)
    expect(described_class.new.call('hi there', 'Bye there')).to eq(false)
  end
end
