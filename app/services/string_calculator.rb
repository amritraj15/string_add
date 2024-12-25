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

  # check number starts with // delimeter or not
  def custom_delimiter?
    numbers.start_with?('//')
  end

  # extracting number if it starts with custom delimerter and includes multiple other delimeters too
  def extract_numbers
    if custom_delimiter?
      _, number_string = numbers.split("\n", 2)
    else
      number_string = numbers
    end
    number_string.split(/#{delimiter}/).map(&:to_i)
  end

  def delimiter
    return /,|\n/ unless custom_delimiter?

    custom_delimiter = numbers.match(%r{//(.)\n})[1]
    Regexp.escape(custom_delimiter)
  end
end
