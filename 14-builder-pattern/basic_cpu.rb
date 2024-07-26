# frozen_string_literal: true

require_relative 'cpu'

# Represents a basic CPU
class BasicCPU < CPU
  def initialize
    super(1_000_000)
  end
end
