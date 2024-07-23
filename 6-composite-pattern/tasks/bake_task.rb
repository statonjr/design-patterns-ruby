# frozen_string_literal: true

# Task to bake the cake
class BakeTask < CompositeTask
  def initialize
    super('Bake the cake')
  end

  def time_required
    2700.0
  end
end
