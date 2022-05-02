# frozen_string_literal: true

require 'strings'

RSpec.describe 'Strings' do
  describe 'Displaying Strings' do
    transaction_display = Transaction.new.display_transaction
    it 'Transaction.new should not return anything' do
      expect(transaction_display).to be_nil
    end

    it 'Transaction.new should not raise an Error' do
      expect { transaction_display }.to_not raise_error
    end
  end
end
