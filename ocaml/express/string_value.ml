(* LEVEL: LANGUAGE *)

let () =
  let a = "abc" in
  let b = ref a in
  b := !b ^ "d";
  ignore !b;
  print_endline a
