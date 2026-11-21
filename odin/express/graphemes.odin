// LEVEL: STD

package main

import "core:fmt"
import "core:unicode/utf8"

main :: proc() {
	s := "abcdefgh👍🏽xyz"
	graphemes, _, _, _ := utf8.decode_grapheme_clusters(s)
	fmt.println(s[:graphemes[9].byte_index])
}
