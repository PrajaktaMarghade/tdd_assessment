class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    if numbers.start_with?("//")
      parts = numbers.split("\n")
      delimiter = parts[0][2..-1]
      numbers = parts[1]
    end

    # Correctly split by delimiter OR newline, then compact to remove any empty strings
    nums = numbers.split(/#{Regexp.escape(delimiter)}|\n/).compact.map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    nums.sum
  end
end