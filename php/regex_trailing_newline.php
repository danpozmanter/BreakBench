<?php
declare(strict_types=1);
echo preg_match("/^[a-z]+$/", $argv[1]) ? "accepted" : "rejected", "\n"; // CONTROL! echo preg_match("/^[a-z]+\\z/", $argv[1]) ? "accepted" : "rejected", "\n";
