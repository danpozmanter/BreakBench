# LEVEL: STD

require "weakref"

def make = WeakRef.new(Object.new)

w = make
GC.start(full_mark: true, immediate_sweep: true)
puts(w.weakref_alive? ? "alive" : "gone")
