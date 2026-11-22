(* OCaml has no standard call for the maximum of a list; this is the usual fold from the head. *)
let () =
  let xs = List.map int_of_string (List.tl (Array.to_list Sys.argv)) in
  let m = List.fold_left max (List.hd xs) xs in
  print_int (m + 1);
  print_newline ()
