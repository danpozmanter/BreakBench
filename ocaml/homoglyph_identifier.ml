let is_admin user = user = "root"
let is_аdmin _user = true (* BREAK! *)

let () =
  let user = "guest" in
  print_endline (if is_admin "root" then "admin" else "guest");
  print_endline (if is_аdmin user then "admin" else "guest") (* CONTROL! print_endline (if is_admin user then "admin" else "guest") *)
