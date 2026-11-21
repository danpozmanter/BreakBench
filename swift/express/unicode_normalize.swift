// LEVEL: STD

import Foundation

print("e\u{301}".precomposedStringWithCanonicalMapping.unicodeScalars.elementsEqual("\u{e9}".unicodeScalars) ? "equal" : "different")
