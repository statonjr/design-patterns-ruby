# frozen_string_literal: true

# A class to make batter
class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end

# Task to add dry ingredients
class AddDryIngredientsTask < CompositeTask
  def initialize
    super('Add Dry Ingredients')
  end

  def time_required
    120.0
  end
end

# Task to add liquids
class AddLiquidsTask < CompositeTask
  def initialize
    super('Add Liquids')
  end

  def time_required
    60.0
  end
end

# Task to mix ingredients
class MixTask < CompositeTask
  def initialize
    super('Mixing')
  end

  def time_required
    300.0
  end
end
