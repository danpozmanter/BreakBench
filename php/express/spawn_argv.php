<?php
// LEVEL: STD
declare(strict_types=1);

$p = proc_open(["echo", "hi; touch /tmp/bb_x"], [1 => ["pipe", "w"]], $pipes);
echo stream_get_contents($pipes[1]);
proc_close($p);
