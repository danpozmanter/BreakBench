class counter =
  object
    val mutable count = 0
    method count = count
    method increment () = count <- count + 1
  end

let run_twice f =
  f ();
  f ()

let () =
  let c = new counter in
  run_twice c#increment;
  print_int c#count;
  print_newline ()
