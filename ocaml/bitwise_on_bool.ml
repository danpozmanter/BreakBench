let () =
  let s = "abc" in
  if String.length s > 0 && s.[0] = 'a' then print_endline "yes";
  if (String.length s > 0) land (s.[0] = 'a') then print_endline "both" (* BREAK! *)
