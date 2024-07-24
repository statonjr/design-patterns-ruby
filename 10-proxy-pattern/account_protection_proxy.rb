# frozen_string_literal: true

# A Proxy object to protect a bank account
#
# We could have included the checking code in the BankAccount object itself.
# The advantage of using a proxy for protection is that it gives us a nice
# separation of concerns: The proxy worries about who is or is not allowed to do what.
# The only thing that the real bank account object need be concerned with is, well,
# the bank account. By implementing the security in a proxy, we make it easy to
# swap in a different security scheme (just wrap the subject in a different proxy) or
# eliminate the security all together (just drop the proxy).
# For that matter, we can also change the implementation of the BankAccount object
# without messing with our security scheme.
class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def respond_to_missing?(_name, _include_private = false)
    true
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    return if @owner_name == 'foo'

    raise 'Illegal access: You cannot access this account.'
  end
end
