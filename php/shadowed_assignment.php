<?php
declare(strict_types=1);
$status = "pending";
if ($argv[1] === "ok") {
    $status = "done";
    fwrite(STDERR, "status: $status\n");
}
echo $status, "\n";
