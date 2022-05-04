# frozen_strin_literal: true

# sum
p [1, 2, 3, 4].inject(&:+)

def histogram(nums)
  nums.each_with_object Hash.new(0) do |e, hash|
    hash[e] += 1
  end
end

p histogram([1, 2, 2, 2, 3])
