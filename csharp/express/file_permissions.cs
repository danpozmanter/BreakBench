// LEVEL: STD

var path = "/tmp/bb_perm.txt";
File.Delete(path);
var options = new FileStreamOptions
{
    Mode = FileMode.CreateNew,
    Access = FileAccess.Write,
    UnixCreateMode = UnixFileMode.UserRead | UnixFileMode.UserWrite,
};
using (new FileStream(path, options)) { }
Console.WriteLine(Convert.ToString((int)File.GetUnixFileMode(path) & 0x1ff, 8));
File.Delete(path);
