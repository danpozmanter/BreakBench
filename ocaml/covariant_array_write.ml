class dog = object method sound = "woof" method fetch = "stick" end
class cat = object method sound = "meow" end

type animal = < sound : string >

let () =
  let dogs = [| new dog |] in
  let pet : animal = (new cat :> animal) in
  print_endline pet#sound;
  let animals = (dogs :> animal array) in (* BREAK! *)
  animals.(0) <- (new cat :> animal); (* BREAK! *)
  print_endline dogs.(0)#sound
