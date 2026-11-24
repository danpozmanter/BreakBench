User = Struct.new(:name)
Session = Struct.new(:user)

def logout(session)
  session.user = nil
end

session = Session.new(User.new("alice"))
if session.user
  logout(session) # CONTROL! puts session.user.name.length
  puts session.user.name.length # CONTROL! logout(session)
end
