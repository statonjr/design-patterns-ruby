# frozen_string_literal: true

require_relative 'make_cake_task'

cake = MakeCakeTask.new
puts "The cake takes #{(cake.time_required / 60).round} minutes to bake."
puts
puts 'Here are the tasks:'
puts
cake.sub_tasks.each { |task| puts task.name }
