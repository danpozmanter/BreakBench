<?php
declare(strict_types=1);

final class Meters
{
    public function __construct(public float $v)
    {
    }

    public function add(Meters $o): Meters
    {
        return new Meters($this->v + $o->v);
    }
}

final class Seconds
{
    public function __construct(public float $v)
    {
    }
}

echo (new Meters(2.0))->add(new Seconds(3.0))->v, "\n";
