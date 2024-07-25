# frozen_string_literal: true

require_relative 'writer_decorator'

# A class to decorate each line in a file with a checksum
class CheckSummingWriter < WriterDecorator
  attr_reader :check_sum

  def initialize(real_writer)
    super
    @real_writer = real_writer
    @check_sum = 0
  end

  def write_line(line)
    line.each_byte { |byte| @check_sum = (@check_sum + byte) % 256 }
    @check_sum += "\n"[0].ord % 256
    @real_writer.write_line(line)
  end
end
