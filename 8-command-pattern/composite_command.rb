# frozen_string_literal: true

require_relative 'command'

# A class that composes multiple commands
class CompositeCommand < Command
  def initialize
    super('Composite command')
    @commands = []
  end

  def add_command(cmd)
    @commands << cmd
  end

  def execute
    @commands.each(&:execute)
  end

  def unexecute
    @commands.reverse.each(&:unexecute)
  end

  def description
    description = ''
    @commands.each { |cmd| description += "#{cmd.description}\n" }
    description
  end
end
