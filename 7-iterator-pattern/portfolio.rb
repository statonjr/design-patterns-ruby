# frozen_string_literal: true

# Represents a portfolio of accounts
class Portfolio
  # By mixing in `Enumerable`, we get all of the iterator methods
  include Enumerable

  def initialize
    @accounts = []
  end

  def each(&block)
    @accounts.each(&block)
  end

  def add_account(account)
    @accounts << account
  end
end
