class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  
  def self.marklar(str)
    str = str.gsub(/\s+/m, ' ').strip.split(" ")    # Split input string by whitespaces
    new_str = ""
    for word in str
        if word[-1] =~ /[[:punct:]]/                # Check for punctuation at end of a given word
            punc = word[-1]
        else
            punc = 0
        end
        if word.length > 4
            if word[0] == word[0].upcase            # Distinguish between upper/lower case marklar words
                word = "Marklar"
            else
                word = "marklar"
            end
        end
        if punc != 0                                # Add back in that punctuation saved from earlier
            word = word + punc
        end
        new_str += word + " "                       # Put input phrase back together
    end
    return new_str[0..-2]
  end

# -------------------------------

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  def self.even_fibonacci(nth)
    if nth < 2                                              # First two fib. terms are odd so I can make this assumption immediately
        return 0
    else
        fibonacci = Array.new(nth)
        fibonacci[0] = 1                                    # Assign first two fib. numbers
        fibonacci[1] = 1
        for i in 2..(nth-1)
            fibonacci[i] = fibonacci[i-1] + fibonacci[i-2]  # Calculate up to nth fib. numbers
        end
    end
    even_sums = 0
    for element in fibonacci
        if element.even? == true
            even_sums += element                            # Sum the even numbers in "fibonacci" array
        end
    end
    return even_sums
  end

end