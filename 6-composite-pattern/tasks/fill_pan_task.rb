# frozen_string_literal: true

# Task to fill the pan
class FillPanTask < CompositeTask
  def initialize
    super('Fill the pan')
  end

  def time_required
    10.0
  end
end
