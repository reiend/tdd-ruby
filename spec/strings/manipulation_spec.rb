# frozen_string_literal: true

require 'manipulation'

RSpec.describe 'String Manipulation' do
  book = Book.new name: '# HARRY PETTER END THE CHEMBER EF SECRETS'
  last_letter = book.name[-1] # -1 last letter index
  first_word_replacement = 'Herry'
  replacement_vowel = 'a'

  it 'Book.new should accept only a String' do
    expect(book.name).to be_a String
  end

  it 'Book.new.name should have a value' do
    expect(book.name).to_not be_nil
  end

  it 'Book.new.name should be all caps' do
    expect(book.name).to eql book.name.upcase
  end

  it "book.last_letter should return #{last_letter} " do
    expect(book.last_letter).to eql last_letter
  end

  it "book.first_word_title should include #{first_word_replacement} " do
    book.first_word_title replacement: first_word_replacement
    first_word = book.name.split(' ')[0] # -1 last letter index
    expect(first_word).to include first_word_replacement
  end

  it "book.vowel should replace all vowels with #{replacement_vowel}" do
    # give new book name and replace every vowel in the title
    book.vowel replacement: replacement_vowel

    # tells if the new book name has only replacement_vowel
    # return true if yes, else false
    replace_vowel_check = lambda do |vowel:|
      is_a_only = false
      book.name.split(//).each do |char|
        vowels = %w[a e i o u]
        next unless vowels.include?(char)

        is_a_only = if char.eql?(vowel)
                      true
                    else
                      return false
                    end
      end
      is_a_only
    end
    expect(replace_vowel_check.call(vowel: replacement_vowel)).to eql true
  end

  it 'book.heading_name should return book.name between h1 ' do
    book.name = "# #{book.name}"
    heading = book.heading_name tag: 'h1'
    expect(!heading.match(%r{[^<h1>\]]+(?=</h1>)}).nil?).to be true
  end
end
