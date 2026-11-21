<?php
declare(strict_types=1);
$fs = [];
for ($i = 0; $i < 3; $i++) {
    $fs[] = fn() => $i;
}
echo implode(",", array_map(fn($f) => $f(), $fs)), "\n";
