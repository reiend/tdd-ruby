# frozen_string_literal: true

require 'arithmetic'

RSpec.describe 'Arithmetic' do
  let(:arithmetic) { arithmetic = Arithmetic }

  before do
    expect(arithmetic)
      .to receive(:add)
      .with(input_1: Numeric, input_2: Numeric)
  end

  describe 'addition' do
    it 'add method should have 2 arguments with type number' do
      arithmetic.add(input_1: 5, input_2: 5)
    end
  end
end
