# LEVEL: STD

require "cgi/escape"

puts CGI.escapeHTML('<a href="x">Tom & Jerry</a>')
