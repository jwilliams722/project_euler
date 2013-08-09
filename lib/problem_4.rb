class Problem3
  require 'prime'

  def prime_factors_of(number)
    return [] unless number.is_a?(Integer)
    number.prime_division.flatten.uniq.sort.select { |num| num != 1 }
  end

  def largest_prime_factor(number)
    prime_factors_of(number).last
  end
end
