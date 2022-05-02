# frozen_string_literal: true

5.times do
  # prefixing $ on a variable makes it global
  $whole_number = 10
  p $whole_number
end

# $whole_number still available here even outside of scope
p $whole_number

# Note this is not recommended
