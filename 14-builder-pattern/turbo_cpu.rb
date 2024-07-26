# frozen_string_literal: true

require_relative 'cpu'

# Represents a Turbo CPU
class TurboCPU < CPU
  def initialize
    super(5_000_000)
  end
end
