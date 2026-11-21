<?php
// LEVEL: STD
declare(strict_types=1);

echo preg_match('//u', "a\xFF") === 1 ? "valid" : "invalid", "\n";
