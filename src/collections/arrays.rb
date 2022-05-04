# frozen_string_literal: true

counting_numbers = [1, 2, 3, 4, 5, 5, 3, 3, 9, 12, 11]
counting_numbers_new = Array.new([1, 2, 3, 4, 5])

p counting_numbers_new

# delete method in array modifies the original array
p counting_numbers.delete(5)                # delete all 5 values
p counting_numbers.delete_at(0)             # delete data using index
p counting_numbers.delete_if(&:even?)       # delete element in array with certain condition
# p(counting_numbers.delete_if do |average|   # delete element in array with certain condition
#   average.even?
# end)

p counting_numbers.push(1, 2, 3)
p counting_numbers.pop
