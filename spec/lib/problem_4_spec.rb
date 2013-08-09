require 'spec_helper'

describe Problem3 do
  describe '.factors_of(number)' do
    it "should return the prime factors of a passed number" do
      factors_of_array = [5, 7, 13, 29]
      expect(subject.prime_factors_of(13195)).to eq(factors_of_array)
    end

    it "should handle nil values" do
      factors_of_array = []
      expect(subject.prime_factors_of(nil)).to eq(factors_of_array)
    end

    it "should handle values that are not Integers" do
      factors_of_array = []
      expect(subject.prime_factors_of("Cat")).to eq(factors_of_array)
    end
  end

  describe ".largest_prime_factor(number)" do
    it "should return the largest prime factor for a number" do
      expect(subject.largest_prime_factor(600851475143)).to eq(6857)
    end
  end
end