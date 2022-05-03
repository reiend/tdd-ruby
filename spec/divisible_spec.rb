# frozen_string_literal: true

require 'divisible'

RSpec.describe 'Divisible' do
  by_five = Divisible.by(5)
  by_three = Divisible.by(3)
  argument1 = 5
  argument2 = 9

  describe 'by 5' do
    it 'argument pass should be divisible by 5' do
      expect(by_five.call(argument1)).to be true
    end
  end
  describe 'by 3' do
    it 'argument pass should be divisible by 3' do
      expect(by_three.call(argument2)).to be true
      expect { by_three.call('not a number') }.to raise_error(StandardError)
    end
    it 'string argument pass should throw an error' do
      expect { by_three.call('not a number') }.to raise_error(StandardError)
    end
    it 'argument should not be equal to zero' do
      expect(argument1).to_not eq 0
      expect(argument2).to_not eq 0
    end
    it 'argument should be type Integer or Float only' do
      expect(argument1).to be_a(Integer).or be_a Float
      expect(argument2).to be_a(Integer).or be_a Float
    end
  end
end
