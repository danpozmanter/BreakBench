let () =
  let evens = Seq.filter (fun x -> x mod 2 = 0) (List.to_seq [ 1; 2; 3; 4; 5; 6 ]) in
  let total = Seq.fold_left ( + ) 0 evens in
  let count = Seq.length evens in
  Printf.printf "%d %d\n" total count
