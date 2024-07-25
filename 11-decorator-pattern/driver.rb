# frozen_string_literal: true

require_relative 'checksumming_writer'
require_relative 'numbering_writer'
require_relative 'simple_writer'
require_relative 'timestamping_writer'

writer = CheckSummingWriter.new(TimeStampingWriter.new(
                                  NumberingWriter.new(SimpleWriter.new('final.txt'))
                                ))
writer.write_line('Hello out there')

# Using modules
require_relative 'modules/line_number_writer'
require_relative 'modules/time_stamp_writer'

w = SimpleWriter.new('out.txt')
w.extend(LineNumberWriter)
w.extend(TimeStampWriter)
w.write_line('hello world')
