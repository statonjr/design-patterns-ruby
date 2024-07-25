# frozen_string_literal: true

# A module to decorate a writer with a line number
module LineNumberWriter
  attr_reader :line_number

  def write_line(line)
    @line_number ||= 1
    super("#{@line_number}: #{line}")
    @line_number += 1
  end
end
