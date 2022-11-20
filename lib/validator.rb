require_relative "parser"
require_relative "checker"

class Validator
  attr_reader :puzzle_string

  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  def validate
    lines = Parser.new(@puzzle_string).lines
    columns = Parser.new(@puzzle_string).columns
    groups = Parser.new(@puzzle_string).groups

    checked_lines = Checker.new(lines).check_strings
    checked_columns = Checker.new(columns).check_strings
    checked_groups = Checker.new(groups).check_strings

    if !checked_lines || !checked_columns || !checked_groups
      "This sudoku is invalid."
    elsif checked_lines == "incomplete" || checked_columns == "incomplete" || checked_groups == "incomplete"
      "This sudoku is valid, but incomplete."
    else
      "This sudoku is valid."
    end
  end
end

#Para executar o teste bundle exec rspec

# file = File.read("spec/fixtures/valid_complete.sudoku")

# teste = Validator.validate(file)
