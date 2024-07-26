# frozen_string_literal: true

# The very simple idea behind the Builder pattern is that you take
# this kind of con-struction logic and encapsulate it in a class all of its own.
# The builder class takes charge of assembling all of the components
# of a complex object. Each builder has an interface that lets you
# specify the configuration of your new object step by step.
# In a sense, a builder is sort of like a multipart `new` method,
# where objects are created in an extended process instead of all in one shot.

require_relative 'computer_builder'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(writer: true)
builder.add_dvd
builder.add_hard_disk(100_000)

puts builder
