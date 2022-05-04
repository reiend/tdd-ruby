# frozen_string_literal: true

# ApiConnector's Template
class ApiConnector
  def initialize(title:, description: nil, url: nil)
    @title = title
    @description = description
    @url = url
  end
end

# SmsConnector's Template
class SmsConnector < ApiConnector
  def send_sms
    puts "#{@title} - sending SMS message"
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
sms.send_sms
sms.block

mail = MailerConnector.new title: 'mail'
mail.send_mail
