# frozen_string_literal: true

# The proxy has a reference to the real object, the subject, hidden inside.
# Whenever the client code calls a method on the proxy, the proxy simply
# forwards the request to the real object.

require_relative 'bank_account'
require_relative 'bank_account_proxy'
require_relative 'account_protection_proxy'
require_relative 'virtual_proxy'

bank_account = BankAccount.new(100)
puts bank_account.balance

bank_account_proxy = BankAccountProxy.new(bank_account)
puts bank_account_proxy.balance

account_protection_proxy = AccountProtectionProxy.new(bank_account, 'foo')
puts account_protection_proxy.balance

virtual_account_proxy = VirtualProxy.new { BankAccount.new(50) }
puts virtual_account_proxy.balance

# This will raise an error because 'bar' is not the account owner
account_protection_proxy = AccountProtectionProxy.new(bank_account, 'bar')
puts account_protection_proxy.balance
