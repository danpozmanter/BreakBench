<?php
declare(strict_types=1);

file_put_contents("/dev/full", "data\n"); // CONTROL! echo file_put_contents("/dev/full", "data\n") === false ? "failed" : "saved", "\n";
echo "saved\n"; // BREAK!
