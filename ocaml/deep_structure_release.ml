type node = { value : int; next : node option }

let () =
  let n = int_of_string Sys.argv.(1) in
  let head = ref None in
  for i = 1 to n do
    head := Some { value = i; next = !head }
  done;
  ignore (Sys.opaque_identity !head);
  head := None;
  Gc.full_major ();
  print_endline "done"
