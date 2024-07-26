# frozen_string_literal: true

require_relative 'computer'
require_relative 'drive'
require_relative 'turbo_cpu'

# A Builder class for computers
class ComputerBuilder
  def initialize
    @computer = Computer.new
  end

  def computer
    raise 'Not enough memory' if @computer.motherboard.memory_size < 250
    raise 'Too many drives' if @computer.drives.size > 4

    hard_disk = @computer.drives.find { |drive| drive.type == :hard_disk }
    raise 'No hard disk.' unless hard_disk

    @computer
  end

  def turbo(_has_turbo_cpu: true)
    @computer.motherboard.cpu = TurboCPU.new
  end

  def display=(display)
    @computer.display = display
  end

  def memory_size=(size_in_mb)
    @computer.motherboard.memory_size = size_in_mb
  end

  def add_cd(writer: false)
    @computer.drives << Drive.new(:cd, 760, writer)
  end

  def add_dvd(writer: false)
    @computer.drives << Drive.new(:dvd, 4000, writer)
  end

  def add_hard_disk(size_in_mb)
    @computer.drives << Drive.new(:hard_disk, size_in_mb, true)
  end

  def to_s
    puts 'Here is your built computer:'
    puts
    puts "CPU: #{@computer.motherboard.cpu.clock_speed / 1000} MHz"
    puts "Memory: #{@computer.motherboard.memory_size / 1000} GB"
  end
end
