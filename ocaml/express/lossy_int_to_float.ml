(* LEVEL: LANGUAGE *)

let show f = Printf.printf "%g\n" f

let () =
  let n = 7 in
  show (float_of_int n);
  show n (* REJECT! *)
