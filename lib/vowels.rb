# frozen_string_literal: true

class Vowels
  # option 1
  # def call(string)
  #   vowels = 'aeiou'

  #   string.chars.inject(0) do |sum, char|
  #     sum += 1 if vowels.chars.include?(char)
  #     sum
  #   end
  # end

  # option 2
  def call(string)
    matches = string.scan(/[aeiou]/)
    matches.nil? ? 0 : matches.size
  end
end
