(* LEVEL: PROJECT *)

let () =
  let re = Re.compile (Re.Perl.re "^(a+)+$") in
  let input = String.make 34 'a' ^ "!" in
  print_endline (if Re.execp re input then "match" else "no match")
