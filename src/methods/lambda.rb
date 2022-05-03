# frozen_string_literal: true

# stabby lambas for one liner
full_name = ->(first_name:, last_name:) { "#{first_name} #{last_name}" }
# full_name  = lambda { |first_name:, last_name:| "#{first_name} #{last_name}" }

character_name = lambda do |first_name, last_name|
  "#{first_name} #{last_name}"
end

# 1st option to call
# call syntax
p full_name.call first_name: 'Era', last_name: 'Are'

# uncommenting the below code throws an error because of incorrect number of arguments pass
# p character_name.call 'Era', 'Are', '5' # lambda difference with procs error

# 2nd option to call
# bracket syntax
p full_name[first_name: 'Era', last_name: 'Are']
