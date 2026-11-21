<?php
declare(strict_types=1);

function show(float $f): void
{
    printf("%.0f\n", $f);
}

show((int)$argv[1]);
