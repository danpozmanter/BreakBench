<?php
declare(strict_types=1);

function show(float $f): void // CONTROL! function show(int $f): void
{
    printf("%.0f\n", $f); // CONTROL! printf("%d\n", $f);
}

show((int)$argv[1]);
