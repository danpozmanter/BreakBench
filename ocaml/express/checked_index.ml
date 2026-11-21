(* LEVEL: STD *)

let () =
  match List.nth_opt [ 10; 20; 30 ] 5 with
  | Some v -> Printf.printf "%d\n" v
  | None -> print_endline "none"
