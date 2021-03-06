# frozen_string_literal: true

require 'add'

RSpec.describe 'Calculator' do
  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(Calculator.new.add(1, 2)).to eq(3)
    end
  end
end
