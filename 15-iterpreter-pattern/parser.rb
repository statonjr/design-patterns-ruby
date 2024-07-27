# frozen_string_literal: true

# A class that implements a simple parser.
#
# In the real world, you'd use a parser library
class Parser
  def initialize(text)
    @tokens = text.scan(/\(|\)|[\w.*]+/)
  end

  def next_token
    @tokens.shift
  end

  def expression
    token = next_token
    if token.nil?
      nil
    elsif token == '('
      result = expression
      raise 'Expected )' unless next_token == ')'

      result
    elsif token == 'all'
      All.new
    elsif token == 'writable'
      Writable.new
    elsif token == 'bigger'
      Bigger.new(next_token.to_i)
    elsif token == 'filename'
      FileName.new(next_token)
    elsif token == 'not'
      Not.new(expression)
    elsif token == 'and'
      And.new(expression, expression)
    elsif token == 'or'
      Or.new(expression, expression)
    else
      raise "Unexpected token: #{token}"
    end
  end
end
