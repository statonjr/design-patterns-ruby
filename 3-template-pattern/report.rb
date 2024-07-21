# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

# Abstract class for Reports
class Report
  extend T::Sig

  sig { params(title: String, text: Array[String]).void }
  def initialize(title: 'Sample Report', text: ['Hello world'])
    @title = title
    @text = text
  end

  # Outputs a report following a specified order
  sig { void }
  def output_report
    output_start
    output_head
    @text.each do |line|
      output_line(line)
    end
    output_end
  end

  # Default implementation
  sig { void }
  def output_start; end

  sig { void }
  def output_head
    output_line(@title)
  end

  sig { void }
  def output_body_start; end

  sig { void }
  def output_line(_line)
    raise 'Called abstract method: output_line'
  end

  sig { void }
  def output_body_end; end

  sig { void }
  def output_end; end
end
