type order = { customer : int; day : int }

let () =
  let orders = List.init 200 (fun day -> { customer = day * 7 mod 5; day }) in
  (* UNDEFINED: List.sort does not promise to keep equal elements in order; List.stable_sort does *)
  let sorted = List.sort (fun a b -> compare a.customer b.customer) orders in (* CONTROL! let sorted = List.stable_sort (fun a b -> compare a.customer b.customer) orders in *)
  let rec kept = function
    | a :: (b :: _ as rest) -> (a.customer <> b.customer || a.day < b.day) && kept rest
    | _ -> true
  in
  print_endline (if kept sorted then "kept" else "scrambled")
