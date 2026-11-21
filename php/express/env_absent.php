<?php
// LEVEL: STD
declare(strict_types=1);

echo getenv("BB_UNSET") === false ? "absent" : "present", "\n";
