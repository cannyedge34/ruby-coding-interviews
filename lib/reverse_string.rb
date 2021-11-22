# frozen_string_literal: true

# reverse string example method without reverse ruby method
class ReverseString
  def call(string)
    string.chars.reduce([]) do |acc, char|
      acc.unshift(char)
    end.join
  end
end
