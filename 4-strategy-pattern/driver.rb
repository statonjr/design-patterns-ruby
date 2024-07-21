# frozen_string_literal: true

require_relative 'report'
require_relative 'formatter'

report = Report.new(HTMLFormatter.new)
report.output_report
