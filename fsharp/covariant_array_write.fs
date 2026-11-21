[<AbstractClass>]
type Animal() =
    abstract Sound: unit -> string

type Dog() =
    inherit Animal()
    override _.Sound() = "woof"

type Cat() =
    inherit Animal()
    override _.Sound() = "meow"

[<EntryPoint>]
let main argv =
    let dogs: Dog[] = [| Dog() |]
    let animals: Animal[] = dogs // BREAK!
    animals.[0] <- Cat() // BREAK!
    printfn "%s" (dogs.[0].Sound())
    0
