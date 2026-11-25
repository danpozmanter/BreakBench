<?php
declare(strict_types=1);
$ready = $argv[1] === "yes";
$approved = $argv[2] === "yes";
$ok = $ready and $approved; // CONTROL! $ok = $ready && $approved;
echo $ok ? "go" : "wait", "\n";
