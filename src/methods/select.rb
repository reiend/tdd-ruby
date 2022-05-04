# frozen_string_literal: true

even_number = (1..10).to_a.select do |number|
  number.even?
end

even_number_short = (1..10).to_a.select { |number| number.even? }

odd_number_shortest = (1..10).to_a.select(&:odd?)

vowels = %w[w wa a d e f g h i j k l m u o].select { |v| v =~ /[aeiou]/ }
thing = %w[something knowthing nothing know].select { |v| v =~ /thing/ }
# thing = %w[something knowthing nothing know].select { |v| v.include?('thing') }

p even_number
p even_number_short
p odd_number_shortest
p vowels
p thing
