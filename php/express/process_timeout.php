<?php
// LEVEL: STD
declare(strict_types=1);

$p = proc_open(["sleep", "10"], [], $pipes);
usleep(100000);
proc_terminate($p, 9);
do {
    $status = proc_get_status($p);
} while ($status["running"]);
echo $status["signaled"] ? "killed" : "finished", "\n";
proc_close($p);
