<?php
declare(strict_types=1);
$depth = (int)$argv[1];
// CONTROL! if ($depth > 1000) { echo "refused\n"; exit(0); }
$value = json_decode(str_repeat("[", $depth) . str_repeat("]", $depth));
echo $value === null ? "refused" : "parsed", "\n";
