# frozen_string_literal: true

require_relative 'motherboard'

# Represents a computer
class Computer
  attr_accessor :display, :motherboard
  attr_reader   :drives

  def initialize(display: :crt, motherboard: Motherboard.new, drives: [])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end
end
