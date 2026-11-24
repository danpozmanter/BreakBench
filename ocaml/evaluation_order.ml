let pair a b = Printf.sprintf "%d %d" a b

let () =
  let n = ref 0 in
  let next () = incr n; !n in
  print_endline (pair (next ()) (next ())) (* CONTROL! let a = next () in let b = next () in print_endline (pair a b) *)
