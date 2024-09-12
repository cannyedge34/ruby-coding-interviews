# frozen_string_literal: true

class Pyramid
  def call(n)
      #
     ###
    #####
   #######
  #########
 ###########

    arr = []

    columns = (n + n - 1)

    n.times do |i|
      string = ''
      current_row = i + 1

      columns.times do |sub_i|
        current_column = sub_i + 1

        mid_point = (columns.to_f / 2.00).ceil

        if current_column <= (mid_point - current_row) || current_column >= (mid_point + current_row)
          string += ' '
          next
        end

        string += '#'
      end

      arr << string
    end

    arr
  end
end
