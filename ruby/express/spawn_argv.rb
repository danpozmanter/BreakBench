# LEVEL: STD

require "open3"

out, _status = Open3.capture2("echo", "hi; touch /tmp/bb_x")
print out
