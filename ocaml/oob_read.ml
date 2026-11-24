type frame = { buf : int array; secret : int }

let () =
  let f = { buf = [| 1; 2; 3; 4 |]; secret = 42 } in
  ignore f.secret;
  print_int f.buf.(int_of_string Sys.argv.(1)); (* CONTROL! (let i = int_of_string Sys.argv.(1) in if i >= 0 && i < 4 then print_int f.buf.(i) else print_string "out of range"); *)
  print_newline ()
