# frozen_string_literal: true

class Anagrams
  def call(word1, word2)
    result = chars(word1) - chars(word2)
    result.none?
  end

  def chars(word)
    word.downcase.scan(/[a-z]+/).join.chars
    # scan(/[a-z|\'|_|\-]+/).size
  end
end
