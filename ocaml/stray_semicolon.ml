let size n =
  let label = ref "small" in
  if n > 5 then; (* CONTROL! if n > 5 then *)
  begin
    label := "big"
  end;
  !label

let () =
  print_endline (size (int_of_string Sys.argv.(1)));
  print_endline (size (int_of_string Sys.argv.(2)))
