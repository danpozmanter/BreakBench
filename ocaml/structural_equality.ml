type p = { x : int; y : int }

let () =
  let a = { x = 1; y = 2 } in
  let b = { x = 1; y = 2 } in
  print_endline (if a = b then "equal" else "different")
