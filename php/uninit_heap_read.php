<?php
declare(strict_types=1);
$session = str_repeat("\0", 64);
$session = substr_replace($session, "SECRET-TOKEN", 32, 12);
unset($session);
$reply = str_repeat("\0", 64);
echo bin2hex(substr($reply, 32, 12)), "\n";
