<?php
declare(strict_types=1);

$xs = array_map("intval", array_slice($argv, 1));
echo max($xs) + 1, "\n";
