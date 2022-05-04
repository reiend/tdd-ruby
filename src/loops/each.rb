# frozen_string_literal: true

numbers = [1, 2, 3, 4, 5, 6, 7, 144]

def max(numbers)
  max_number = 0
  numbers.each { |number| max_number = number if number > max_number }
  max_number
end

p max numbers
