type account = { mutable balance : int }

let () =
  let accounts = [ { balance = 100 } ] in
  List.iter (fun acct -> acct.balance <- acct.balance + 50) accounts;
  print_int (List.hd accounts).balance;
  print_newline ()
