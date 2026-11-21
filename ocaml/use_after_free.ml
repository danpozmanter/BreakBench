type record = { mutable value : int }

let () =
  let a = ref (Some { value = 1234 }) in
  let b = Option.get !a in
  a := None;
  let others = List.init 16 (fun _ -> { value = 6666 }) in
  ignore (Sys.opaque_identity others);
  print_int b.value;
  print_newline ()
