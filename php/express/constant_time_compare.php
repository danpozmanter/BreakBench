<?php
// LEVEL: STD
declare(strict_types=1);

echo hash_equals(str_repeat("\x07", 16), str_repeat("\x07", 16)) ? "equal" : "different", "\n";
