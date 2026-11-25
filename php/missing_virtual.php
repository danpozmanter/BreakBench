<?php
declare(strict_types=1);

class Shape
{
    public function area(): int
    {
        return 0;
    }

    public function describe(): string
    {
        return "area " . $this->area();
    }
}

final class Square extends Shape
{
    public function area(): int
    {
        return 4;
    }
}

echo (new Square())->describe(), "\n";
