(* LEVEL: STD *)

let () =
  let re = Str.regexp "^[a-z]+[0-9][0-9]$" in
  let test s = string_of_bool (Str.string_match re s 0) in
  print_endline (test "abc12" ^ " " ^ test "abc1")
