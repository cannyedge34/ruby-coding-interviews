# frozen_string_literal: true

require_relative '../lib/fizzbuzz'

describe FizzBuzz do
  it 'returns fib buzz until number' do
    expect(described_class.new.call(10)).to eq('0,1,2,3,5,8')
  end
end
