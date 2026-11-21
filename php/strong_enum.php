<?php
declare(strict_types=1);

enum Color
{
    case Red;
    case Green;
    case Blue;
}

function name(Color $c): string
{
    return match ($c) {
        Color::Red => "red",
        Color::Green => "green",
        Color::Blue => "blue",
    };
}

echo name(7), "\n";
