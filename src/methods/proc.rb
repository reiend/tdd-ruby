# frozen_string_literal: true

full_name = proc { |first_name:, last_name:| "#{first_name} #{last_name}" }

# 1st option to call
p full_name.call first_name: 'Era', last_name: 'Are'

# 2nd option to call
p full_name[first_name: 'Era', last_name: 'Are']
