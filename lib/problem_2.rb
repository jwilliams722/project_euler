class Problem2
  attr_accessor :fib_values

  def initialize
    self.fib_values = {0 => 0, 1 => 1}
  end

  def fibonacci(number)
    self.fib_values[number] ||= fibonacci(number - 1) + fibonacci(number - 2)
    # self.fib_values[number] I want you to see if number is in the fib_values hash, if it is then
    # return it, ||= else figure it out and add it to this hash
  end

  def fibonacci_array(max_value)
    number = 0
    my_array = []
    while(value = fibonacci(number))
      if value <= max_value
        my_array << value
      else
        return my_array
      end
      number += 1
    end
  end

  def sum_of_even_fibonacci_results(max_value)
    fibonacci_array(max_value).inject(0) do |result, element|
      result += element if element.even?  # only add to result if it's even
      # += is the same as result = result + element
      result
    end
  end
end
