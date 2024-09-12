# frozen_string_literal: true

class CharacterSequence
  def call(string)
    # most_repeated_character = string.chars.max_by_size
    string.chars.each_with_object({}) do |word, acc|
      acc[word] = acc[word].nil? ? word : acc[word] += word
      acc
    end.values.max_by(&:size)
    # string.each_char.chunk_while { |curr, nxt| curr == nxt }.map(&:join).max_by(&:size)
  end
end
