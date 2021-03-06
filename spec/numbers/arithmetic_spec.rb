# frozen_string_literal: true

require 'arithmetic'

RSpec.describe 'Arithmetic' do
  let(:arithmetic) { Arithmetic }

  describe 'Addition' do
    describe 'Arguments' do
      before do
        expect(arithmetic)
          .to receive(:add)
          .with(input1: Numeric, input2: Numeric)
      end
      it 'add method shoulds have 2 arguments with type number' do
        arithmetic.add(input1: 5, input2: 5)
      end
    end

    describe 'returns' do
      it 'add method should return numeric type' do
        expect(arithmetic.add(input1: 5, input2: 2))
          .to be_an Integer || Float
      end
    end
  end

  describe 'Subtraction' do
    describe 'arguments' do
      before do
        expect(arithmetic)
          .to receive(:subtract)
          .with(input1: Numeric, input2: Numeric)
      end
      it 'subtract method should have 2 arguments with type number' do
        arithmetic.subtract(input1: 5, input2: 5)
      end
    end

    describe 'returns' do
      it 'subtract method should return numeric type' do
        expect(arithmetic.subtract(input1: 5, input2: 2))
          .to be_an Integer || Float
      end
    end
  end

  describe 'Multiplication' do
    describe 'arguments' do
      before do
        expect(arithmetic)
          .to receive(:multiply)
          .with(input1: Numeric, input2: Numeric)
      end
      it 'multiply method should have 2 arguments with type number' do
        arithmetic.multiply(input1: 5, input2: 5)
      end
    end

    describe 'returns' do
      it 'multiply method should return numeric type' do
        expect(arithmetic.multiply(input1: 5, input2: 2))
          .to be_an Integer || Float
      end
    end
  end

  describe 'Division' do
    describe 'arguments' do
      before do
        expect(arithmetic)
          .to receive(:divide)
          .with(input1: Numeric, input2: Numeric)
      end
      it 'divide method should have 2 arguments with type number' do
        arithmetic.divide(input1: 5, input2: 5)
      end
    end

    describe 'returns' do
      second_argument = 5
      it 'divide method should return numeric type' do
        expect { arithmetic.divide(input1: 5, input2: second_argument) }
          .to_not raise_error
        expect(arithmetic.divide(input1: 5, input2: second_argument))
          .to be_an Integer || Float
      end
      it 'division method second argument should not be zero' do
        expect(second_argument).to_not eql 0
      end
    end
  end
end
