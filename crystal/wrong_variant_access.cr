v = 42.as(Int32 | String)
puts v.as(String).size # CONTROL! puts(v.is_a?(String) ? v.size : "not text")
