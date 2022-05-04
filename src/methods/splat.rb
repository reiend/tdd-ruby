# frozen_string_literal: true

# standard splat array
def team(*players)
  jake, *rest_player = players
  p jake
  p rest_player
end

team 'player_1', 'player_2', 'player_3'

# keyword based splats
def show_jobs(job_data)
  job_data.each do |name, job|
    puts "#{name} - #{job}"
  end
end

jobs = {
  'Yor Forger': 'assassin',
  'Loid Forger': 'spy'
}

show_jobs(**jobs)

# optional arguments
def book_info(options = {})
  p options[:title]
  p options[:pages]
  p options[:author]
end

book_info(
  title: 'Harry Potter and the Half Blookd prince',
  pages: '607',
  author: 'J.K. Rowling'
)
