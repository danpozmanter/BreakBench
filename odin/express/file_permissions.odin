// LEVEL: STD

package main

import "core:fmt"
import "core:os"

main :: proc() {
	path :: "/tmp/bb_perm.txt"
	os.remove(path)
	f, err := os.open(path, {.Write, .Create, .Excl}, {.Read_User, .Write_User})
	if err != nil do panic("open")
	os.close(f)
	info, serr := os.stat(path, context.allocator)
	if serr != nil do panic("stat")
	mode: u32 = 0
	for flag in info.mode do mode |= 1 << u32(flag)
	fmt.printf("%o\n", mode & 0o777)
	os.remove(path)
}
