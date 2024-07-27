# frozen_string_literal: true

# A base class for expressions
class Expression
  def |(other)
    Or.new(self, other)
  end

  def &(other)
    And.new(self, other)
  end
end
