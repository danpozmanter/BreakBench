// LEVEL: STD

import 'dart:convert';

void main() {
  print(const HtmlEscape(HtmlEscapeMode.attribute).convert('<a href="x">Tom & Jerry</a>'));
}
