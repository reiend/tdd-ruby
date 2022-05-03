# frozen_string_literal: true

module Divisible
  module_function

  def by(divisible_number)
    lambda do |input_number|
      (input_number * 100_000 % divisible_number * 100_000).zero?
    end
  end
end
