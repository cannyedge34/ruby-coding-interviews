# frozen_string_literal: true

class FizzBuzz
  # solution 1

  def call(number)
    array = []
    number.times do |i|
      array << i if i < 3 || i == array.last + array[-2]
    end
    array.join(',')
  end
end
