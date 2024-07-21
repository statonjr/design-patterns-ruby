# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

# Represents the payroll department
class Payroll
  extend T::Sig

  sig { params(employee: Employee).void }
  def update(employee)
    puts("Cut a new check for #{employee.name}!")
    puts("His salary is now $#{employee.salary / 100}!")
  end
end
