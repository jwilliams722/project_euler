class Problem1

  def find_multiples_of(number)
    (1...number).to_a.select { |number| number % 3 == 0 || number % 5 == 0 }
    # select - loops through array, if it returns true include it in the new array if false don't include
    # reject does the opposite
  end

  def sums_multiples_of(number)
    find_multiples_of(number).inject(0) { |result, element| result + element }
    # start with 0 and pass that in with result, 0 + 3 = 3, 3 is now result, result is always the accumulation of what was added in the
    # last loop, 3 + 5 = 8, 8 is now the result, and so on until the array is looped entirely, then it returns the last result
    # if you start with an array of arrays of usernames and number of comments and want to create a hash with usernames as the key
    # and the amount of comments they have as the value
  end
end
