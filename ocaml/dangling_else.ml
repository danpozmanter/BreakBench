let () =
  let a = Sys.argv.(1) = "1" in
  let b = true in
  let r = ref "unset" in
  if a then if b then r := "both" else r := "not a";
  print_endline !r
