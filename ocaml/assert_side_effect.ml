let () =
  let jobs = Stack.of_seq (List.to_seq [ 1; 2; 3 ]) in
  assert (Stack.pop jobs = 3);
  print_int (Stack.length jobs);
  print_newline ()
