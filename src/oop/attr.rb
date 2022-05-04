# frozen_string_literal: true

# ApiConnector's Template
class ApiConnector
  attr_accessor :title, :description, :url

  def info
    puts "title - #{@title}"
    puts "description - #{@description}"
    puts "url #{@url}"
  end
end

api = ApiConnector.new

api.url = 'http://google.com'
api.title = 'google'
api.description = 'google'

api.info
p api.url
