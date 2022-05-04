# frozen_string_literal: true

# OrderReport's Template
class OrderReport
  def initialize(customer:, total:, address:)
    @customer = customer
    @total = total
    @address = address
  end

  def invoice
    puts 'invoice'
    puts @customer
    puts @total
  end

  def bill_info
    puts 'Bill'
    puts @customer
    puts 'Shipping label...'
    puts @address
  end
end

order = OrderReport.new customer: "Customer I", total: 100, address: "address I"
order.invoice
order.bill_info

# changes are made when extended
