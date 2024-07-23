# frozen_string_literal: true

require_relative 'task'

# Abstracts out the details of managing child tasks
class CompositeTask < Task
  attr_reader :sub_tasks

  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end

  def time_required
    time = 0.0
    @sub_tasks.each { |task| time += task.time_required }
    time
  end
end
