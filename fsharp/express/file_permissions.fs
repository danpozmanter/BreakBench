// LEVEL: STD

open System
open System.IO

[<EntryPoint>]
let main _ =
    let path = "/tmp/bb_perm.txt"
    File.Delete path
    let options =
        FileStreamOptions(Mode = FileMode.CreateNew, Access = FileAccess.Write,
                          UnixCreateMode = Nullable(UnixFileMode.UserRead ||| UnixFileMode.UserWrite))
    (new FileStream(path, options)).Dispose()
    printfn "%s" (Convert.ToString(int (File.GetUnixFileMode path) &&& 0x1ff, 8))
    File.Delete path
    0
