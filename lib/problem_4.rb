class Problem4

  # Simple palindrome? method option

  #def palindrome?(value)
  #  value.to_s == value.to_s.reverse ? true : false
  #end

  # Recursive palindrome? method option

  def palindrome?(string)
    string = string.to_s.gsub(/\W/,'').downcase
    return true if string == "" || string.length == 1
    letters = string.split("")
    first_letter = letters.shift
    last_letter = letters.pop
    first_letter == last_letter && (letters.none? || palindrome?(letters.join))
  end

  def largest_palindrome_from_three_digit_multiples
    palindromes = []
    999.downto(100) do |number1|
      999.downto(100) do |number2|
        result = (number1 * number2).to_s
        if self.palindrome?(result)
          palindromes << result.to_i
        end
      end
    end
      palindromes.sort.last
  end
end
