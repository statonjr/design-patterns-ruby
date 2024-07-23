# frozen_string_literal: true

# Task to lick the spoon
class LickSpoonTask < CompositeTask
  def initialize
    super('Lick the spoon')
  end

  def time_required
    90.0
  end
end
