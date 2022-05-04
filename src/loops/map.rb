# frozen_string_literal: true

puts 'Maps'
string_numbers = %w[1 2 3 4]
integer_numbers = string_numbers.map(&:to_i)

puts "string_numbers \= #{string_numbers}"
puts "integer_numbers \= #{integer_numbers}"

# creates a Hash from an array using it's data as key string and value data as integer
p Hash[[1, 2, 3, 4, 5, 6].map { |x| [x.to_s, x.to_i] }]

# creates a Hash from an array using it's data as key string and value data as length
p Hash[%w[your name].map { |word| [word.to_s, word.size] }]
