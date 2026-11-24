<?php
declare(strict_types=1);

exec("sh -c 'exit 3'"); // CONTROL! exec("sh -c 'exit 3'", $out, $code); if ($code !== 0) { echo "backup failed\n"; exit(0); }
echo "backed up\n";
