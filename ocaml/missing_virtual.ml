class shape =
  object (self)
    method area = 0
    method describe = "area " ^ string_of_int self#area
  end

class square =
  object
    inherit shape
    method! area = 4
  end

let () = print_endline (new square)#describe
