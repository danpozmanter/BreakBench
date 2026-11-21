type record = { value : int }

let () =
  let a = ref (Some { value = 0 }) in
  a := None;
  a := None;
  let x = { value = 1 } in
  let y = { value = 2 } in
  ignore (Sys.opaque_identity y);
  print_int x.value;
  print_newline ()
