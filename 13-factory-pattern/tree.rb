# frozen_string_literal: true

# Represents a Tree
class Tree
  def initialize(name)
    @name = name
  end

  def grow
    puts("The tree #{@name} grows tall")
  end
end
