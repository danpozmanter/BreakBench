<?php
declare(strict_types=1);
$name = "ada";
strtoupper($name); // BREAK!
echo $name, "\n"; // CONTROL! echo strtoupper($name), "\n";
