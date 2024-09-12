# frozen_string_literal: true

class MaximumSumSubset
  def call(arr)
    new_arr = []
    return 0 if arr.empty?

    # each_cons(3)
    # [1, 2, 3]
    # [2, 3, 4]
    positions = ''

    arr.each_with_index do |_, idx|
      arr.each_cons(idx + 1) do |subarr|
        # new_arr << subarr.sum
        # [2, -4,6, 8, -10, 100, -6, 5]
        positions = "#{subarr.first},#{subarr.last}" if subarr.sum > new_arr.sum
      end
    end
    # new_arr.max.negative? ? 0 : new_arr.max

    positions
  end
end
