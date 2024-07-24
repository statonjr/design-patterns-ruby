# frozen_string_literal: true

# The idea of factoring out the action code into its own object is the essence
# of the Command pattern. This pattern separates out something that changes
# from something that does not change.

require_relative 'composite_command'
require_relative 'create_file'
require_relative 'copy_file'
require_relative 'delete_file'

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))

# Describe the commands that we want to execute
puts 'Executing the following commands:'
puts(cmds.description)

# Execute the commands
cmds.execute
