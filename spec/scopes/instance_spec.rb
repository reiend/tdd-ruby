# frozen_string_literal: true

require 'instance'

RSpec.describe 'Instance Variable and Scope' do
  describe Company.new.name do
    it { is_expected.to be_a String }
    it { is_expected.to_not be_an Integer }
    it { is_expected.to_not be_an Array }
    it { is_expected.to_not be_an Hash }
  end
end
