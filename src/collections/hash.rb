# frozen_string_literal: true

numbers = {
  even: [2, 4, 6],
  odd: [1, 3, 5],
  null: []
}

# hash rockets syntax
# numbers_rockets = {
#   :even => [2, 4, 6],
#   :odd=> [1, 3, 5]
# }

p numbers
puts ''

puts 'accessing element on hash'
p numbers[:even]
p numbers[:odd]
puts ''

puts 'deleting element on hash'
p numbers.delete(:null)
p numbers.delete(:odd)
puts ''

puts 'Hash after delete element'
p numbers
puts ''

puts 'accessing key on hash'
numbers.each_key { |key| p key }
puts ''

puts 'accessing value on hash'
numbers.each_value { |value| p value }
puts ''

puts 'Hash after adding element'
puts 'adding element on an hash\n'
numbers[:odd] = [1, 3, 5]
puts ''

puts 'Hash after invert'
inverted_numbers = numbers.invert
p inverted_numbers
puts ''

puts 'Hash after merging'
p numbers.merge(inverted_numbers)
puts ''

puts 'Hash after converting into array'
p Array(numbers)
puts ''

puts 'Hash keys'
p numbers.keys
puts ''

puts 'Hash values'
p numbers.values
puts ''
