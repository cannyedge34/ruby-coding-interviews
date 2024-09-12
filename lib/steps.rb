# frozen_string_literal: true

class Steps
  def call(n)
    arr = []

    n.times do |index|
      string = ''
      current_index = index + 1

      n.times do |subi|
        if subi + 1 <= current_index
          string += '#'
          next
        end

        string += ' '
      end

      arr << string
    end

    arr
  end
end
