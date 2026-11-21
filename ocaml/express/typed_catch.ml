(* LEVEL: LANGUAGE *)

exception A
exception B

let handle f = try f () with A -> print_endline "caught A"

let () =
  handle (fun () -> raise A);
  try handle (fun () -> raise B) with B -> print_endline "passed B"
