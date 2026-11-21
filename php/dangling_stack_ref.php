<?php
declare(strict_types=1);
function &make(): int
{
    $local = 4242;
    return $local;
}

function clobber(): array
{
    return array_fill(0, 64, 7);
}

$r = &make();
clobber();
echo $r, "\n";
