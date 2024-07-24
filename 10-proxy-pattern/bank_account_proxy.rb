# frozen_string_literal: true

# A Proxy object for a bank account
class BankAccountProxy
  def initialize(subject)
    @subject = subject
  end

  def respond_to_missing?(_name, _include_private = false)
    true
  end

  def method_missing(name, *args)
    @subject.send(name, *args)
  end
end
