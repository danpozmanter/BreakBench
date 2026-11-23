record User, name : String

class Session
  property user : User?

  def initialize(@user : User?)
  end
end

def logout(session : Session)
  session.user = nil
end

session = Session.new(User.new("alice"))
if session.user
  logout(session)
  puts session.user.name.size # BREAK!
  # CONTROL! puts session.user.try(&.name.size)
end
