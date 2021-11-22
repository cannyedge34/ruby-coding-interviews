# frozen_string_literal: true

require_relative '../lib/reverse_string'

describe ReverseString do
  it 'call method return the reversed string' do
    expect(described_class.new.call('apple')).to eq('elppa')
    expect(described_class.new.call('hello')).to eq('olleh')
    expect(described_class.new.call('Greetings!')).to eq('!sgniteerG')
  end
end
