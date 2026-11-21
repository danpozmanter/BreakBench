let pair a b = Printf.sprintf "%d %d" a b

let () =
  let n = ref 0 in
  let next () = incr n; !n in
  print_endline (pair (next ()) (next ()))
