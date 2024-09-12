# frozen_string_literal: true

class Capitalize
  def call(string)
    string.split(' ').map(&:capitalize).join(' ')
  end
end
