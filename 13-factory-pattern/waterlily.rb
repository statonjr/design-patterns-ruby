# frozen_string_literal: true

# Represents a WaterLily
class WaterLily
  def initialize(name)
    @name = name
  end

  def grow
    puts("The water lily #{@name} floats, soaks up the sun, and
grows")
  end
end
