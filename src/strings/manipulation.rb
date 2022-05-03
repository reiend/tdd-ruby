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

  def heading_name(tag:)
    @name.gsub(/^.*#.*/) do |heading|
      "<#{tag}>#{heading[2..]}</#{tag}>"
    end
  end
end

book_name = Book.new name: '# herry Petter end the chember ef secrets'

# p book_name.last_letter
# p book_name.first_word_title(replacement: 'jake')

# # String manipulation
# puts book_name.name.reverse       # reverse string
# puts book_name.name.upcase        # all caps string
# puts book_name.name.downcase      # all non caps string
# puts book_name.name.capitalize    # capitailize string, first letter only
# puts book_name.name.slice(0, 5)   # get first letter to five

# # return true if book_name.heading_name returns book_name.name is between h1
# p !book_name.heading_name(tag: 'h1').match(%r{[^<h1>\]]+(?=</h1>)}).nil?

# # Method chaining
# puts book_name
#   .name
#   .downcase
#   .capitalize
#   .reverse
#   .split(//)
#   .first
