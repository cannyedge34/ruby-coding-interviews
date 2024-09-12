# frozen_string_literal: true

class SymetricDifference
  def call(arr1, arr2)
    arr1 - arr2 | arr2 - arr1
  end
end
