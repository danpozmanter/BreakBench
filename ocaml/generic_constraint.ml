type point = { x : int; y : int }

let () =
  let ps = List.sort compare [ { x = 3; y = 4 }; { x = 1; y = 2 } ] in
  let p = List.hd ps in
  ignore p.y;
  print_int p.x;
  print_newline ()
