(* LEVEL: STD *)

module IS = Set.Make (Int)

let () =
  let s = IS.of_list [ 3; 1; 2 ] in
  print_endline (String.concat " " (List.map string_of_int (IS.elements s)))
