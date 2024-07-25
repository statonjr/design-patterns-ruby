# frozen_string_literal: true

# A module to decorate a writer with a timestamp
module TimeStampWriter
  def write_line(line)
    super("#{Time.new}: #{line}")
  end
end
