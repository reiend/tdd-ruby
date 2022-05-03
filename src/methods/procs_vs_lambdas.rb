# frozen_string_literal: true

# with lambda remaining code was run
def exit_method_lambda
  exit = -> { return }
  puts 'before lambda'
  exit.call
  puts 'after lambda '
end

exit_method_lambda

puts ''

# with procs remaining code was not run
def exit_method_procs
  exit = proc { return }
  puts 'before procs'
  exit.call
  puts 'after procs'
end

exit_method_procs
