# frozen_string_literal: true

# ApiConnector's Template
class ApiConnector
  def initialize(title, description = nil, url = nil)
    @title = title
    @description = description
    @url = url
  end

  def logger
    puts 'default api connector'
  end
end

# SmsConnector's Template
class SmsConnector < ApiConnector
  attr_accessor :title, :url

  def initialize(number, title, description, url = nil)
    super(title, description, url)
    @number = number
  end

  def send_sms
    puts "#{@title} - sending SMS message"
  end

  # polymorphism happens here overides the logger from the parent
  def logger
    super
    puts 'default sms connector'
  end

  def block
    p_block
  end

  private

  def p_block
    puts 'Blocking you'
  end
end

# MailerConnector's Template
class MailerConnector < ApiConnector
  def send_mail
    puts "#{@title} - sending mail message"
  end
end

sms = SmsConnector.new 5050, 'Hi, learning ruby', '15'
sms.logger

p sms.title
p sms.url
