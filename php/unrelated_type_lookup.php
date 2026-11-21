<?php
declare(strict_types=1);

$ids = [10, 20, 30];
$id = $argv[1];
echo in_array($id, $ids) ? "found" : "missing", "\n";
