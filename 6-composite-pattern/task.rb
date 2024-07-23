# frozen_string_literal: true

# Represents a task to be completed
class Task
  attr_accessor :name, :parent

  def initialize(name)
    @name = name
    @parent = nil
  end

  def time_required
    0.0
  end
end
