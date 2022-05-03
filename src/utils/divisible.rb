# frozen_string_literal: true

DECIMAL_LIMIT = 100_000

module Divisible
  module_function

  def by(divisible_number)
    lambda do |input_number|
      (input_number * DECIMAL_LIMIT % divisible_number * DECIMAL_LIMIT).zero?
    end
  end
end
