type item = { mutable v : int }

let () =
  let items = Dynarray.of_list [ { v = 1 } ] in
  let r = Dynarray.get items 0 in
  for i = 0 to 999 do
    Dynarray.add_last items { v = i }
  done;
  let w = Dynarray.of_list [ { v = 7 } ] in
  r.v <- 99;
  print_int (Dynarray.get w 0).v;
  print_newline ()
