# frozen_string_literal: true

full_name = proc { |first_name:, last_name:| "#{first_name} #{last_name}" }

character_name = proc do |first_name, last_name|
  "#{first_name} #{last_name}"
end

# 1st option to call
# call syntax
p full_name.call first_name: 'Era', last_name: 'Are'
p character_name.call 'Era', 'Are', '5' # procs difference with lambda no error

# 2nd option to call
# bracket syntax
p full_name[first_name: 'Era', last_name: 'Are']
