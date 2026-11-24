interface User {
  name: string;
}

interface Session {
  user: User | null;
}

function logout(session: Session): void {
  session.user = null;
}

const session: Session = { user: { name: "alice" } };
if (session.user !== null) {
  logout(session); // CONTROL! console.log(session.user.name.length);
  console.log(session.user.name.length); // CONTROL! logout(session);
}
