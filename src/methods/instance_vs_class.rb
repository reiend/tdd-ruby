# frozen_string_literal: true

# Character's Template
class Character
  # class method
  def self.greet(name = 'stranger')
    p 'class method'
    p "hello #{name}"
  end

  # instance method
  def greet(name = 'stranger')
    p 'instance method'
    p "hello #{name}"
  end
  
end

# class method
Character.greet

puts ''

# instance method
Character.new.greet
