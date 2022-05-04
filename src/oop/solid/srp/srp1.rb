# frozen_string_literal: true

# this class breaks the single responsibility principle
# Invoice's Template
class Invoice
  def initialize(customer:, state:, total:)
    @customer = customer
    @state = state
    @total = total
  end

  def details
    "Customer: #{@customer} Destails: #{@total}"
  end

  def sale_tax
    case @state
    when 'AZ' then 5.5
    when 'TX' then 3.2
    when 'CA' then 8.7
    end
  end

  def email_invoice
    puts 'emailing ...'
    puts details
  end
end

invoice = Invoice.new(customer: 'Customer I', state: 'TX', total: 100)
puts invoice.singleton_class
puts invoice.email_invoice

# NOTE: look for srp2 and srp3 for incremental step to abiding srp
