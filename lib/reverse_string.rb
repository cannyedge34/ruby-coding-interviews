# frozen_string_literal: true

# reverse string example method without reverse ruby method
class ReverseString
  def call(string)
    reversed_string = ''
    chars = string.chars
    chars.size.times { reversed_string += chars.pop }
    reversed_string
  end
end
