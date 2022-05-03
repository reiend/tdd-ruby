# frozen_string_literal: true

require 'variables'

# Test for String variable
RSpec.describe 'String Variable' do
  describe Variables.new.message do
    it { is_expected.to be_a String }
    it { is_expected.to_not be_an Integer }
    it { is_expected.to_not be_an Hash }
    it { is_expected.to_not be_an Array }
    it { is_expected.to_not be_nil }
    it 'Variable.new.message should have a length of greater than 10 but less than 12' do
      expect(Variables.new.message.length).to be >= 10
      expect(Variables.new.message.length).to be <= 12
    end
  end
end

# Test for Array variable
RSpec.describe 'Array Variable' do
  describe Variables.new.cities do
    it { is_expected.to be_an Array }
    it { is_expected.to_not be_a String }
    it { is_expected.to_not be_an Integer }
    it { is_expected.to_not be_an Hash }
    it { is_expected.to_not be_nil }
  end
end
