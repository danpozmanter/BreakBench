<?php
declare(strict_types=1);
echo preg_match("/^(a+)+$/", $argv[1]) ? "match" : "no match", "\n";
