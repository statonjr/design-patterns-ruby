# frozen_string_literal: true

# Abstract class for various formatters
class Formatter
  def output_report(_title, _text)
    raise 'Abstract method called'
  end
end

# Formatter for HTML
class HTMLFormatter < Formatter
  def output_report(title, text)
    puts('<doctype! html>')
    puts('<html>')
    puts('  <head>')
    puts("    <title>#{title}</title>")
    puts('  </head>')
    puts('  <body>')
    text.each do |line|
      puts("    <p>#{line}</p>")
    end
    puts('  </body>')
    puts('</html>')
  end
end

# Formatter for plain text
class PlainTextFormatter < Formatter
  def output_report(title, text)
    puts("***** #{title} *****")
    text.each do |line|
      puts(line)
    end
  end
end
