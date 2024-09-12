# frozen_string_literal: true

class LastWordCounter
  def call(string)
    string.split.last.size
  end
end
