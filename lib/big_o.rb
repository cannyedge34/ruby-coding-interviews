# frozen_string_literal: true

# big-o example methods
class BigO
  def sum(number)
    return 0 if number <= 0

    number + sum(number - 1)
  end
end
