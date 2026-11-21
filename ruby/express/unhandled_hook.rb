# LEVEL: LANGUAGE

at_exit { puts "hook ran" if $! }
raise "boom"
