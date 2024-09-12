# frozen_string_literal: true

class Subarray
  def call(array, number)
    # [1, 2, 3, 4, 5], 2)).to eq([[1, 2], [3, 4], [5]])

    # # option 1
    # result = []
    # array.each do |element|
    #   if element <= number
    #     result.any? ? result.first << element : result << [element]
    #     next
    #   end

    #   if result.last.size == number
    #     result << [element]
    #     next
    #   end

    #   result.last << element
    # end

    # result

    # option 2
    array.each_with_object([]) do |element, acc|
      if acc.none?
        acc << [element]
        next
      end

      if acc.last.size == number
        acc << [element]
        next
      end

      acc.last << element
      acc
    end
  end
end
