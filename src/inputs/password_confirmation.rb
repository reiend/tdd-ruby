# frozen_string_literal: true

user_password = 'admin1234'

print 'Enter your password: '
password = gets.chomp

if user_password == password
  puts 'Logging in'
else
  puts 'Invalid Password'
end
