# frozen_string_literal: true

# unnamed arguments
character_name = lambda do |first_name, last_name|
  "#{first_name} #{last_name}"
end

# named arguments
full_name = ->(first_name:, last_name:) { "#{first_name} #{last_name}" }
user_name = ->(first_name: 'first_name', last_name: 'last_name') { "#{first_name} #{last_name}" }

p user_name.call
