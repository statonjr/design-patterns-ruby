# frozen_string_literal: true

# Task to frost the cake
class FrostTask < CompositeTask
  def initialize
    super('Frost the cake')
  end

  def time_required
    1200.0
  end
end
