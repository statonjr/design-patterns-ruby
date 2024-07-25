# frozen_string_literal: true

require_relative 'writer_decorator'

# A class to decorate a writer with a timestamp
class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end
