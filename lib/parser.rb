class Parser
  attr_accessor :puzzle

  def initialize(puzzle)
    @puzzle = puzzle
  end

  def lines
    puzzle_sub_groups = puzzle.split("------+------+------").join("")

    arr_of_lines = puzzle_sub_groups.split(/[\n]/)

    arr_of_lines.each do |el|
      el.gsub!("|", "")
    end

    arr_of_lines.reject! { |c| c.empty? }

    arr_of_lines.each do |el|
      el.gsub!(" ", "")
    end

    return arr_of_lines
  end

  def columns
    matrix_lines = lines.map do |el|
      el.split("")
    end

    columns = ""

    matrix_lines.map.with_index do |el, index|
      el.each.with_index do |num, i|
        columns += matrix_lines[i][index]
        if i == 8
          columns += "|"
        end
      end
    end
    columns.split("|")
  end

  def groups

    def sub_groups(arr, col)
      first_sub_group = col.take(3).flatten.join("")
      arr.push(first_sub_group)

      second_sub_group = col.drop(3).take(3).flatten.join("")
      arr.push(second_sub_group)

      third_sub_group = col.drop(6).flatten.join("")
      arr.push(third_sub_group)
    end

    arr_of_groups = []

    first_column = lines.map { |el| el.split("") }.map { |el| el.take(3) }

    sub_groups(arr_of_groups, first_column)

    second_column = lines.map { |el| el.split("") }.map { |el| el.drop(3).take(3) }

    sub_groups(arr_of_groups, second_column)

    third_column = lines.map { |el| el.split("") }.map { |el| el.drop(6) }

    sub_groups(arr_of_groups, third_column)

    arr_of_groups
  end
end
