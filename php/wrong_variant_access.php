<?php
declare(strict_types=1);
$v = 42;
echo strlen($v), "\n"; // CONTROL! echo is_string($v) ? strlen($v) : "not text", "\n";
