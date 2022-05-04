# frozen_string_literal: true

def book_info(list)
  list.map.with_index(1) { |name, index| yield(index, name) }
end

books = ['Book I', 'Book II']

# number
p book_info(books) { |x, y| "#{x} #{y}" }

# html p
p book_info(books) { |_x, y| "<span>#{y}</span>" }

# list
p book_info(books) { |_x, y| "<li>#{y}</li>" }
