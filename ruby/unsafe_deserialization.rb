Session = Struct.new(:user)

class Cleanup
  def marshal_dump
    "/tmp/bb_cache"
  end

  def marshal_load(_path)
    puts "cleanup ran"
  end
end

attacker = Marshal.dump(Cleanup.new)
begin
  session = Marshal.load(attacker)
  puts session.user
rescue StandardError
  puts "rejected"
end
