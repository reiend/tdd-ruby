# frozen_string_literal: true

# ApiConnector's Template
class ApiConnector
  def initialize(title:, description: nil, url: nil)
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

sms = SmsConnector.new title: 'Hi, learning ruby'
sms.logger
