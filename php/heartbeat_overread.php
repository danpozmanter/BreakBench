<?php
declare(strict_types=1);
$claimed = (int)$argv[1];
$buf = str_repeat("\0", 64);
$buf = substr_replace($buf, "SECRET-KEY-0042", 2, 15);
$buf = substr_replace($buf, "hi", 0, 2);
$payload = substr($buf, 0, 2);
// CONTROL! if ($claimed > strlen($payload)) { echo "invalid\n"; exit(0); }
$reply = substr($payload, 0, $claimed);
echo $reply, "\n";
