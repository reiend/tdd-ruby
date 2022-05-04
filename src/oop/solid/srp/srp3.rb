# frozen_string_literal: true

# breaking it down StaleTax class
class Invoice
  attr_reader :state

  def initialize(customer:, state:, total:)
    @customer = customer
    @state = state
    @total = total
  end

  def details
    "Customer: #{@customer} Destails: #{@total}"
  end
end

# Mail' Template
class Mail
  def self.email(content)
    puts 'Emailing'
    puts content
  end
end

# SaleTax' Template
class SaleTax
  def initialize(state:)
    @state = state
  end

  def sale_tax
    case @state
    when 'AZ' then 5.5
    when 'TX' then 3.2
    when 'CA' then 8.7
    end
  end
end

invoice = Invoice.new(customer: 'Customer I', state: 'TX', total: 100)
tax = SaleTax.new state: invoice.state
puts tax.sale_tax
Mail.email invoice.details
