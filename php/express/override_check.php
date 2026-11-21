<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

class Shape
{
    public function describe(): string
    {
        return "shape";
    }
}

final class Circle extends Shape
{
    #[\Override]
    public function describe(): string
    {
        return "circle";
    }
    #[\Override] public function descibe(): string { return "circle"; } // REJECT!
}

$s = new Circle();
echo $s->describe(), "\n";
