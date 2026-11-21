(* LEVEL: LANGUAGE *)

let pair () = (1, "a")

let () =
  let n, s = pair () in
  Printf.printf "%d %s\n" n s
