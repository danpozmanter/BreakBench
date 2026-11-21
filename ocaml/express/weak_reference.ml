(* LEVEL: STD *)

let () =
  let w = Weak.create 1 in
  let make () = Weak.set w 0 (Some (Bytes.make 64 'x')) in
  make ();
  Gc.full_major ();
  print_endline (if Weak.check w 0 then "alive" else "gone")
