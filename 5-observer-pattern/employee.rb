# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'
require 'observer'

# Represent a person employed by an organization
# https://docs.ruby-lang.org/en/3.3/Observable.html
class Employee
  extend T::Sig
  include Observable

  attr_reader :name, :address, :salary

  sig { params(name: String, title: String, salary: Integer).void }
  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  sig { params(new_salary: Integer).void }
  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end
end
