# frozen_string_literal: true

require 'fileutils'
require_relative 'command'

# A command to copy a file
class CopyFile < Command
  def initialize(source, target)
    super("Copy file: #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    @contents = File.read(@source) if File.exist?(@source)
    FileUtils.copy(@source, @target)
  end

  def unexecute
    return unless @contents

    f = File.open(@source, 'w')
    f.write(@contents)
    f.close
  end
end
