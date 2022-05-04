# frozen_string_literal: true

def is_greater_than_10(number)
  if number > 10
    puts "#{number} is greater than 10"
  else
    puts "#{number} is less or equal than 10"
  end
end

# is_greater_than_10 5

# unless syntax

counting_numbers = [1, 2, 3, 4, 5, 6]
# counting_numbers = []

counting_numbers.each { |number| puts number } unless counting_numbers.empty?

# # block
# unless counting_numbers.empty?
#   counting_numbers.each do |number|
#     puts number
#   end
# end
