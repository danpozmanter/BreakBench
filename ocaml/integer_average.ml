let () =
  let sum = 7 and count = 2 in
  let avg : float = sum / count in (* BREAK! *)
  (* CONTROL! let avg : float = float_of_int sum /. float_of_int count in *)
  Printf.printf "%.1f\n" avg
