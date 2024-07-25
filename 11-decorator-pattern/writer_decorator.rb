# frozen_string_literal: true

# The `forwardable` module supplies the `def_delegators `class method,
# which takes two or more arguments. The first argument is the name
# of an instance attribute. It is followed by the name of one or more methods.
# The `def_delegators` method will add all of the named methods to your class,
# and each of those new methods in turn delegates to the object referred to
# by the attribute.
require 'forwardable'

# A generic decorator class to decorate writers
class WriterDecorator
  extend Forwardable

  def_delegators :@real_writer, :write_line, :rewind, :pos, :close

  def initialize(real_writer)
    @real_writer = real_writer
  end
end
