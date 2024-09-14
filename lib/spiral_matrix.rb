# frozen_string_literal: true

class SpiralMatrix
  def call(n)
    matrix = Array.new(n) { Array.new }

    current_position = 1

    start_column = 0
    end_column = n - 1
    start_row = 0
    end_row = n - 1

    while start_column <= end_column && start_row <= end_row
      # top row
      (start_column..end_column).to_a.each do |position|
        matrix[start_row][position] = current_position
        current_position += 1
      end

      start_row += 1

      # right column
      (start_row..end_row).to_a.each_with_index do |position|
        matrix[position][end_column] = current_position
        current_position += 1
      end

      end_column -= 1

      # bottom row
      (start_column..end_column).to_a.reverse.each do |position|
        matrix[end_row][position] = current_position
        current_position += 1
      end

      end_row -= 1

      # start column
      (start_row..end_row).to_a.reverse.each do |position|
        matrix[position][start_column] = current_position
        current_position += 1
      end

      start_column += 1
    end

    matrix
  end
end
