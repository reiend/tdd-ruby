# frozen_string_literal: true

# this is necessary for destructuring class
# Object's Template
class Object
  def values_at(*attributes)
    attributes.map { |attribute| send(attribute) }
  end
end

# Creeting's Template
class Greeting < Object
  attr_reader :name

  def initialize(name:)
    @name = name
  end

  def hello
    "hello #{@name}"
  end
end

# greeting = Greeting.new(name: 'Rspec')
# name = greeting.values_at(:name)
# p name.join
