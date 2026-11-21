let () =
  let seen = Hashtbl.create 4 in
  let key = ref [ 1; 2 ] in
  Hashtbl.replace seen !key ();
  key := 9 :: List.tl !key;
  Hashtbl.iter (fun e () -> print_endline (if Hashtbl.mem seen e then "found" else "lost")) seen
