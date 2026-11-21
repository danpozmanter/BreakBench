type value = Int_value of int | Text of string

let () =
  let v = if Array.length Sys.argv > 5 then Text Sys.argv.(5) else Int_value 42 in
  let (Text s) = v in (* BREAK! *)
  (* CONTROL! let s = match v with Text s -> s | Int_value _ -> "" in *)
  print_int (String.length s);
  print_newline ()
