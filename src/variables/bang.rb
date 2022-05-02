# frozen_string_literal: false

username = 'ed'

# bang, frozen_string_literal: false
p username.upcase! # Modifies the actual variable
p username         # prints ED
