# frozen_string_literal: true

require_relative 'html_report'
require_relative 'plain_text_report'

html_report = HTMLReport.new
html_report.output_report

puts "\n\n"

plain_text_report = PlainTextReport.new
plain_text_report.output_report
