# frozen_string_literal: true

# OrderReport's Template
class OrderReport
  def initialize(customer:, total:)
    @customer = customer
    @total = total
  end
end

# Invoice's Template
class Invoice < OrderReport
  def display
    puts 'invoice'
    puts @customer
    puts @total
  end
end

# BillInfo's Template
class BillInfo < OrderReport
  def initialize(address:, **args)
    super(**args)
    @address = address
  end

  def display
    puts 'Bill'
    puts @customer
    puts 'Shipping label...'
    puts @address
  end
end

order = Invoice.new customer: 'Customer I', total: 100
bill_order = BillInfo.new address: 'address II', customer: 'Customer II', total: 200

order.display
puts ''
bill_order.display
# changes are made when extended
