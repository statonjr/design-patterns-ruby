# frozen_string_literal: true

# The Interpreter pattern is built around a very simple idea:
# Some programming problems are best solved by creating a specialized language
# and expressing the solution in that language. What kind of problems are
# good candidates for the Interpreter pattern? As a general rule,
# problems well suited to the Interpreter pattern tend to be self-contained,
# with crisp boundaries around them.

require_relative 'all'
require_relative 'and'
require_relative 'bigger'
require_relative 'file_name'
require_relative 'not'
require_relative 'parser'
require_relative 'writable'

expr_all = All.new
files = expr_all.evaluate('test-dir')
p files

expr_jpg = FileName.new('*.jpg')
jpgs = expr_jpg.evaluate('test-dir')
p jpgs

expr_not_writable = Not.new(Writable.new)
readonly_files = expr_not_writable.evaluate('test-dir')
p readonly_files

small_expr = Not.new(Bigger.new(1024))
small_files = small_expr.evaluate('test-dir')
p small_files

complex_expression = And.new(
  And.new(Bigger.new(1024),
          FileName.new('*.jpg')),
  Not.new(Writable.new)
)
complex_files = complex_expression.evaluate('test-dir')
p complex_files

parser = Parser.new 'and (and(bigger 1024)(filename *.jpg)) writable'
ast = parser.expression
p ast
ast_files = ast.evaluate('test-dir')
p ast_files
