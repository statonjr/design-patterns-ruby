# frozen_string_literal: true

require_relative 'basic_cpu'

# Represents a motherboard of a computer
class Motherboard
  attr_accessor :cpu, :memory_size

  def initialize(cpu: BasicCPU.new, memory_size: 32_000)
    @cpu = cpu
    @memory_size = memory_size
  end
end
