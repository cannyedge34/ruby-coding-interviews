# frozen_string_literal: true

require_relative '../lib/pyramid'

describe Pyramid do
  it 'returns pyramid shape with N levels using the character #' do
    expect(described_class.new.call(1)).to eq(['#'])
    expect(described_class.new.call(2)).to eq([' # ', '###'])
    expect(described_class.new.call(3)).to eq(['  #  ', ' ### ', '#####'])
    expect(described_class.new.call(4)).to eq(['   #   ', '  ###  ', ' ##### ', '#######'])
     #
    ###
   #####
  #######
 #########
  end
end
