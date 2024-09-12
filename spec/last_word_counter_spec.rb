# frozen_string_literal: true

require_relative '../lib/last_word_counter'

describe LastWordCounter do
  it 'call method return the counter of the last word' do
    expect(described_class.new.call('Hello World')).to eq(5)
    expect(described_class.new.call(' fly me   to   the moon  ')).to eq(4)
    expect(described_class.new.call('luffy is still joyboy')).to eq(6)
  end
end
