# frozen_string_literal: true

# Represents a basic CPU
class CPU
  attr_reader :clock_speed

  def initialize(clock_speed)
    @clock_speed = clock_speed
  end
end
