require "date"

y, m, d = ARGV.map { |a| Integer(a) }
puts Date.new(y, m, d).iso8601 # CONTROL! puts(Date.valid_date?(y, m, d) ? Date.new(y, m, d).iso8601 : "invalid")
