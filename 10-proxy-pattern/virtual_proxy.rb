# frozen_string_literal: true

# A virtual proxy for a bank account
class VirtualProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def respond_to_missing?(_name, _include_private = false)
    true
  end

  def method_missing(name, *args)
    s = subject
    s.send(name, *args)
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end

  def to_s
    @subject.to_s
  end
end
