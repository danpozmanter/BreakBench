<?php
declare(strict_types=1);
@unlink("/tmp/bb_pwned");
$child = proc_open(["echo", $argv[1]], [1 => ["pipe", "w"]], $pipes);
echo stream_get_contents($pipes[1]);
proc_close($child);
echo file_exists("/tmp/bb_pwned") ? "injected" : "safe", "\n";
