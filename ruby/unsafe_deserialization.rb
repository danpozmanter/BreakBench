require "json"

Session = Struct.new(:user)

class Cleanup
  def marshal_dump
    "/tmp/bb_cache"
  end

  def marshal_load(_path)
    puts "cleanup ran"
  end
end

# Marshal's documentation sends untrusted data to JSON.
attacker = Marshal.dump(Cleanup.new)
begin
  session = Session.new(JSON.parse(attacker).fetch("user"))
  puts session.user
rescue StandardError
  puts "rejected"
end
