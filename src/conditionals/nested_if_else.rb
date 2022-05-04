# frozen_string_literal: true

def ride_age_fee(age)
  if age.negative?
    puts 'Invalid age'
    return
  end

  if age > 18
    puts '$300 ride fee'
  elsif age > 12
    puts '$100 ride fee'
  elsif age > 7
    puts '$50 ride fee'
  else
    puts 'free ride'
  end
end

ride_age_fee(4)
