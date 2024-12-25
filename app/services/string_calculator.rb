class StringCalculator
  # Service to return sum of numbers from string

  attr_reader :numbers

  # initialize variables that will be used inside class
  def initialize(numbers)
    @numbers = numbers
  end

  # adds string numbers values
  def self.add(numbers)
    new(numbers).add
  end

  # addition of the numbers
  def add
    return 0 if numbers.empty?
	return numbers.to_i if single_number?

	number_list = extract_numbers 
	number_list.sum
  end

  private

  def single_number?
    numbers.length == 1
  end

  def extract_numbers
	numbers.split(/#{delimiter}/).map(&:to_i)
  end

  def delimiter
	return /,|\n/ 
  end
end
