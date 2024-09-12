# frozen_string_literal: true

require_relative '../lib/palindrome'

describe Palindrome do
  it 'sum method returns 10' do
    expect(described_class.new.call('abba')).to eq(true)
    expect(described_class.new.call('abcdeg')).to eq(false)
  end
end
