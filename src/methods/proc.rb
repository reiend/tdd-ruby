# frozen_string_literal: true

full_name = proc { |first_name:, last_name:| "#{first_name} #{last_name}" }

p full_name.call first_name: 'jake', last_name: 'lonceras'
