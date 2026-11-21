<?php
declare(strict_types=1);

enum Color: int
{
    case Red = 0;
    case Green = 1;
    case Blue = 2;
}

echo "before\n";
echo Color::from((int)$argv[1])->name, "\n";
