# frozen_string_literal: true

5.times do
  # variable whole_number is only available inside the do and end block
  whole_number = 10
  p whole_number
end

# whole_number variable is not available here
# p whole_number  # uncommenting this will throw an error
