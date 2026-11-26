<?php
declare(strict_types=1);

function base(): int
{
    return BASE;
}

define('LIMIT', base() * 2); // BREAK!
define('BASE', (int)"10");
// CONTROL! define('LIMIT', base() * 2);

echo LIMIT, "\n";
