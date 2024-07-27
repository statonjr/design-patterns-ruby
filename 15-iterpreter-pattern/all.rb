# frozen_string_literal: true

require 'find'
require_relative 'expression'

# Class to return all files
class All < Expression
  def evaluate(dir)
    results = []
    Find.find(dir) do |p|
      next unless File.file?(p)

      results << p
    end
    results
  end
end
