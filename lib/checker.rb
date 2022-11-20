require_relative "string_validator"

class Checker
  attr_accessor :array_of_strings

  def initialize(array_of_strings)
    @array_of_strings = array_of_strings
  end

  def check_strings
    complete = false
    incomplete = false

    array_of_strings.each do |e|
      string_validator = StringValidator.new(e)
      if !string_validator.validate
        return false
      elsif string_validator.validate == "incomplete"
        incomplete = true
        complete = false
      else
        complete = true
      end
    end

    if incomplete
      return "incomplete"
    else
      return true
    end
  end
end
