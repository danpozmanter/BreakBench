<?php
// LEVEL: STD
declare(strict_types=1);

echo filter_var($argv[1], FILTER_VALIDATE_INT) === false ? "invalid" : "valid", "\n";
