let () =
  let fs = ref [] in
  for i = 0 to 2 do
    fs := (fun () -> i) :: !fs
  done;
  print_endline (String.concat "," (List.rev_map (fun f -> string_of_int (f ())) !fs))
