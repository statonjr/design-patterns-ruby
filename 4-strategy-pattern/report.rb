# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

# Generic report
class Report
  extend T::Sig

  attr_reader :title, :text
  attr_accessor :formatter

  # Dependency Injection: We inject the formatter class that we want
  sig { params(formatter: T.any(HTMLFormatter, PlainTextFormatter)).void }
  def initialize(formatter)
    @title = 'Monthly Report'
    @text =  ['Hello World', 'Is this Smalltalk?']
    @formatter = formatter
  end

  sig { void }
  def output_report
    @formatter.output_report(self)
  end
end
