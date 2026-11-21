let move ~dx ~dy = Printf.printf "%d %d\n" dx dy

let () =
  move ~dx:3 ~dy:4;
  move 3 4 (* BREAK! *)
