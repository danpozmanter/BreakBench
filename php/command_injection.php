<?php
declare(strict_types=1);
@unlink("/tmp/bb_pwned");
shell_exec("echo " . $argv[1]);
echo file_exists("/tmp/bb_pwned") ? "injected" : "safe", "\n";
