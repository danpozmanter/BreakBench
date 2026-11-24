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
        $s instanceof Shape => "other", // CONTROL! $s instanceof Circle => "circle",
        $s instanceof Circle => "circle", // CONTROL! $s instanceof Shape => "other",
    };
}

echo describe(new Circle()), "\n";
