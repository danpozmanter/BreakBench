<?php
declare(strict_types=1);
$joined = "/srv/app/uploads/" . $argv[1];
echo str_starts_with($joined, "/srv/app/uploads/") ? "inside" : "escaped", "\n";
