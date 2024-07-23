# frozen_string_literal: true

require_relative 'composite_task'
require_relative 'tasks'

# A class to make a cake via arbitrarily deep subtasks
class MakeCakeTask < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task(MakeBatterTask.new)
    add_sub_task(FillPanTask.new)
    add_sub_task(BakeTask.new)
    add_sub_task(FrostTask.new)
    add_sub_task(LickSpoonTask.new)
  end
end
