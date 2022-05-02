# frozen_string_literal: true

FIRST_LETTER = 0
# Book's Template
class Book
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def last_letter
    @name
      .reverse
      .split(//)
      .first
  end

  def first_word_title(replacement:)
    @name = @name.sub @name.split(' ')[FIRST_LETTER], replacement
  end

  def vowel(replacement:)
    @name = @name.downcase.gsub 'e', replacement
  end
end

book_name = Book.new name: 'herry Petter end the chember ef secrets'
p book_name.last_letter

p book_name.first_word_title(replacement: 'jake')
# String manipulation
puts book_name.name.reverse
puts book_name.name.upcase
puts book_name.name.downcase
puts book_name.name.capitalize
puts book_name.name.slice(0, 5)

# Method chaining
puts book_name
  .name
  .downcase
  .capitalize
  .reverse
  .split(//)
  .first
