// LEVEL: STD

package main

import "core:fmt"
import "core:path/filepath"
import "core:strings"

main :: proc() {
	p, _ := filepath.join({"/srv/app", "../../etc/passwd"})
	fmt.println("inside" if strings.has_prefix(p, "/srv/app/") else "outside")
}
