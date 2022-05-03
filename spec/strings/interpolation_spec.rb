# frozen_string_literal: true

require 'interpolation'

RSpec.describe 'String Interpolation' do
  greeting = Greeting.new(name: 'ringo')
  describe 'Greeting' do
    it 'Greeting.new should accept only a string' do
      expect(greeting.name).to be_a String
    end
    it 'greeting.hello should include greeting.name' do
      expect(greeting.hello).to include(greeting.name)
    end
  end
  describe greeting.name do
    it { is_expected.to_not be_nil } # one liner hehe
  end
end
