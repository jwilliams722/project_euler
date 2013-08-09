require 'spec_helper'

describe Problem2 do
  describe ".fibonacci(number)" do
    it "should return 0 for the fibonacci(0)" do
      expect(subject.fibonacci(0)).to eq(0)
    end

    it "should return 1 for the fibonacci(1)" do
      expect(subject.fibonacci(1)).to eq(1)
    end

    it "should return 8 for the fibonacci(6)" do
      expect(subject.fibonacci(6)).to eq(8)
    end
  end

  describe ".fibonacci_array(max_value)" do
    it "should return the array of fibonacci up to 10" do
      fibonacci_array = [0, 1, 1, 2, 3, 5, 8]
      expect(subject.fibonacci_array(10)).to eq(fibonacci_array)
    end

    it "should return the array of fibonacci up to 4,000,000" do
      fibonacci_array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34,
                         55, 89, 144, 233, 377, 610, 987,
                         1597, 2584, 4181, 6765, 10946, 17711,
                         28657, 46368, 75025, 121393, 196418,
                         317811, 514229, 832040, 1346269, 2178309,
                         3524578]
      expect(subject.fibonacci_array(4000000)).to eq(fibonacci_array)
    end
  end

  describe ".sum_of_even_fibonacci_results(max_value)" do
    it "should return 10 for sum_of_even_fibonacci_results(10)" do
      expect(subject.sum_of_even_fibonacci_results(10)).to eq(10)
    end
  end
end