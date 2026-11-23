"use strict";

function logout(session) {
  session.user = null;
}

const session = { user: { name: "alice" } };
if (session.user !== null) {
  logout(session);
  console.log(session.user.name.length);
}
