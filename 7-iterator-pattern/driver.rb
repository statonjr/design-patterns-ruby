# frozen_string_literal: true

require_relative 'account'
require_relative 'portfolio'

checking_account = Account.new('Checking', 10_000)
savings_account = Account.new('Savings', 20_000)
equities_account = Account.new('Equities', 100_000)

portfolio = Portfolio.new
portfolio.add_account(checking_account)
portfolio.add_account(savings_account)
portfolio.add_account(equities_account)

puts(portfolio.any? { |account| account.balance > 200_000 })
puts(portfolio.all? { |account| account.balance >= 1000 })
