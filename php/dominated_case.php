<?php
declare(strict_types=1);

class Shape
{
}

final class Circle extends Shape
{
}

function describe(Shape $s): string
{
    return match (true) {
        $s instanceof Shape => "other",
        $s instanceof Circle => "circle",
    };
}

echo describe(new Circle()), "\n";
