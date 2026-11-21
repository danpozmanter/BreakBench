(* LEVEL: LANGUAGE *)

type config = { name : string }

let () =
  let c = { name = "app" } in
  let (_missing : config) = None in (* REJECT! *)
  print_endline c.name
