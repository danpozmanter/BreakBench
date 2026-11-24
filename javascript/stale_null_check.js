"use strict";

function logout(session) {
  session.user = null;
}

const session = { user: { name: "alice" } };
if (session.user !== null) {
  logout(session); // CONTROL! console.log(session.user.name.length);
  console.log(session.user.name.length); // CONTROL! logout(session);
}
