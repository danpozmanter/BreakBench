type user = { name : string }
type session = { mutable user : user option }

let logout s = s.user <- None

let () =
  let session = { user = Some { name = "alice" } } in
  match session.user with
  | Some u ->
      logout session;
      print_int (String.length u.name);
      print_newline ()
  | None -> ()
