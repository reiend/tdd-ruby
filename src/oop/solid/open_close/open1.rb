# frozen_string_literal: true

# OrderReport's Template
class OrderReport
  def initialize(customer:, total:)
    @customer = customer
    @total = total
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
  end
end

order = OrderReport.new customer: "Customer I", total: 100
order.invoice
order.bill_info

# note look for open2 and open3 on abiding open/closed principle
