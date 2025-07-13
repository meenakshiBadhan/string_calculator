class Calculator
  # Calculates the sum of numbers
  def add(numbers)
    return 0 if numbers.empty?

     # Replace all non-numeric characters with commas
    numbers.gsub!(/[^0-9-]/, ',')

    # Split using commas and convert to integers
    nums = numbers.split(/[,]/).map(&:strip).map(&:to_i)
    
    # Return sum
    nums.sum
  end
end
