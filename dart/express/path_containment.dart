// LEVEL: PROJECT

import 'package:path/path.dart' as p;

void main() {
  final full = p.normalize(p.join('/srv/app', '../../etc/passwd'));
  print(p.isWithin('/srv/app', full) ? 'inside' : 'outside');
}
