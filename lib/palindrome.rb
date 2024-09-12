# frozen_string_literal: true

class Palindrome
  # alternative one
  # def call(string)
  #   reversed_string = ''
  #   chars = string.chars
  #   chars.size.times { reversed_string += chars.pop }
  #   reversed_string == string
  # end

  # alternative two
  def call(string)
    chars = string.chars
    chars.each_with_index.map do |val, index|
      opposite_index = (index + 1)
      val == chars[- opposite_index]
    end.all?
  end
end
