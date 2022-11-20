class StringValidator
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def validate
    original_string = string.split("")

    without_zero = original_string.select { |n| n.to_i > 0 }

    without_repetition = original_string.uniq
    sum_length = original_string.length - without_zero.length

    if original_string.length == without_repetition.length + sum_length - 1 && original_string.include?("0")
      "incomplete"
    elsif original_string.length == without_repetition.length
      "complete"
    else
      false
    end
  end
end
