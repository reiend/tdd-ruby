# frozen_string_literal: true

goverment_officials = {
  'US': {
    'President': 'Biden'
  },
  'Philippines': {
    'President': 'Duterte'
  },
  'Russia': {
    'President': 'Putin'
  }
}

goverment_officials.each do |country, positions|
  puts country
  positions.each do |position, name|
    p "#{position} - #{name}"
  end
end
