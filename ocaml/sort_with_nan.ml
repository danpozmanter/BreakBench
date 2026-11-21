let () =
  let xs = List.sort compare [ 5.; nan; 3.; 1.; nan; 4.; 2. ] in
  let finite = List.filter (fun x -> not (Float.is_nan x)) xs in
  let rec ordered = function a :: (b :: _ as rest) -> a <= b && ordered rest | _ -> true in
  print_endline (if ordered finite then "ordered" else "unordered")
