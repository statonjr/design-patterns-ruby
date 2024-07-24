# frozen_string_literal: true

require_relative 'command'

# A command to delete a file
class DeleteFile < Command
  def initialize(path)
    super("Delete file: #{path}")
    @path = path
  end

  def execute
    @contents = File.read(@path) if File.exist?(@path)
    File.delete(@path)
  end

  def unexecute
    return unless @contents

    f = File.open(@path, 'w')
    f.write(@contents)
    f.close
  end
end
