# frozen_string_literal: true

require_relative 'easy_logger'
require_relative 'simple_logger'

logger1 = SimpleLogger.instance
logger2 = SimpleLogger.instance

puts logger1 == logger2

logger3 = EasyLogger.instance
logger4 = EasyLogger.instance

puts logger3 == logger4
