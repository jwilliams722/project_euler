require 'spec_helper'

describe Problem1 do
  describe ".find_multiples_of(number)" do
    it "returns 3, 5, 6, 9 when passed 10" do
      multiples = [3, 5, 6, 9]
      expect(subject.find_multiples_of(10)).to eq(multiples)
    end
  end

  describe ".sums_multiples_of(number)" do
    it "returns 23 when passed 10" do
      expect(subject.sums_multiples_of(10)).to eq(23)
    end

    it "returns 233168 when passed 1000" do
      expect(subject.sums_multiples_of(1000)).to eq(233168)
    end
  end
end