# frozen_string_literal: true

require_relative '../lib/vowels'

describe Vowels do
  it 'returns vowels of a sentence' do
    expect(described_class.new.call('Hi there!')).to eq(3)
    expect(described_class.new.call('Why do you ask?')).to eq(4)
    expect(described_class.new.call('Why')).to eq(0)
  end
end
