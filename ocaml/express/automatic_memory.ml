(* LEVEL: LANGUAGE *)

type record = { id : int; data : Bytes.t }

let () =
  let last = ref { id = 0; data = Bytes.empty } in
  for i = 0 to 3_999_999 do
    last := { id = i; data = Bytes.make 1016 '\000' }
  done;
  ignore !last.data;
  print_int !last.id;
  print_newline ()
