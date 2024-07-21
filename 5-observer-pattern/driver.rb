# frozen_string_literal: true

require_relative 'employee'
require_relative 'payroll'

fred = Employee.new('Fred', 'FL', 8_000_000)
fred.add_observer(Payroll.new)

# The `#notify_observers` method can also be used with `proc`s by using the `:call` as func parameter.
tax_man = ->(employee) { puts "Send #{employee.name} a new tax bill!" }
fred.add_observer(tax_man, :call)

fred.salary = 9_000_000
