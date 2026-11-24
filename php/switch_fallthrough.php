<?php
declare(strict_types=1);
$n = (int)$argv[1];
switch ($n) {
    case 1:
        $name = "one";
        // CONTROL! break;
    case 2:
        $name = "two";
        break;
    default:
        $name = "other";
}
echo $name, "\n";
