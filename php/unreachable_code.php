<?php
declare(strict_types=1);

function check(): void
{
    echo "ok\n";
    return; // BREAK!
    echo "checked\n";
}

check();
