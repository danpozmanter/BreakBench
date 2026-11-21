package main

import "core:fmt"
import "core:os"
import "core:path/filepath"
import "core:strings"

main :: proc() {
	joined, _ := filepath.join({"/srv/app/uploads", os.args[1]})
	fmt.println("inside" if strings.has_prefix(joined, "/srv/app/uploads/") else "escaped")
}
